class Client < ActiveRecord::Base
    
    belongs_to :gender
    has_many   :notes
end
