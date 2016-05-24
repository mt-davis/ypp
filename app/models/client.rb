class Client < ActiveRecord::Base
    
    belongs_to :gender
    has_many   :notes
    belongs_to :state
    belongs_to :rsource
end
