class Discharge < ActiveRecord::Base
    has_and_belongs_to_many :cleints
end
