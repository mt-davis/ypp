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
    belongs_to :grade
    belongs_to :cigarette
    belongs_to :alcohol
    belongs_to :mj
    belongs_to :od
    #belongs_to :mhealth_sub
    #belongs_to :school
    #belongs_to :grad
    belongs_to :wk
    #belongs_to :text_Rs
    #belongs_to :text_id
    #belongs_to :truma
    belongs_to :college
    has_and_belongs_to_many :rhealths
    has_and_belongs_to_many :mhealths
    #has_and_belongs_to_many :dischages
    has_and_belongs_to_many :cparents
    has_and_belongs_to_many :pregs
    #has_and_belongs_to_many :refferal
    has_and_belongs_to_many :refas
    has_and_belongs_to_many :refbs
    
    
    validates :firstName, :lastName, presence: true
    validates :phone, format: { with: /\A\(\d{3}\) \d{3}-\d{4}\z/,
    message: "must be in the format (123) 456-7890" }
end
