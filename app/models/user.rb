class User < ApplicationRecord
    has_many :customers, foreign_key: :customer_id, class_name: "Event"
    has_many :chefs, through: :customers
    has_many :chefs, foreign_key: :chef_id, class_name: "Event"
    has_many :customers, through: :chefs
end
