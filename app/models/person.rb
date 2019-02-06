class Person < ActiveRecord::Base
  has_many :addresses
  accepts_nested_attributes_for :addresses, reject_if: Proc.new { |attributes| attributes[:street_address_1].blank? }
end
