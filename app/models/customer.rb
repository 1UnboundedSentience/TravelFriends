class Customer < ActiveRecord::Base
  has_many :travel_plans
end
