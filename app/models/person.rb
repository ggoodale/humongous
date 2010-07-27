class Person
  include Mongoid::Document
  include Mongoid::Timestamps

  field :first_name
  field :last_name
  field :division
  field :clearance_level, :type => Integer, :default => 0

  key :first_name, :last_name

  embeds_one :contact_info
  embeds_many :assignments

  index [[:first_name, Mongo::ASCENDING], [:last_name, Mongo::ASCENDING]]

  scope :security_personnel, where(:division => 'security')

  scope :cleared_for, lambda { |level|
    where(:clearance_level.gte => level)
  }
end
