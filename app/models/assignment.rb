class Assignment
  include Mongoid::Document

  field :name
  field :start_date, :type => Date
  field :end_date, :type => Date

  embedded_in :person, :inverse_of => :assignments

end
