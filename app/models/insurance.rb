class Insurance < ActiveRecord::Base
    has_many :clients
end
