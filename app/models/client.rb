class Client < ActiveRecord::Base
    mount_uploader :image, ImageUploader

    belongs_to :gender
    has_many   :notes
    belongs_to :state
    belongs_to :rsource
    belongs_to :employment
    belongs_to :race
    belongs_to :insurance
    belongs_to :ed
    
    validates :firstName, :lastName, presence: true
    validates :phone, format: { with: /\A\(\d{3}\) \d{3}-\d{4}\z/,
    message: "must be in the format (123) 456-7890" }
end
