class Refb < ActiveRecord::Base
    has_and_belongs_to_many :clients
end
