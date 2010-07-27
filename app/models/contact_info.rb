class ContactInfo
  include Mongoid::Document

  field :handle

  embedded_in :person, :inverse_of => :contact_info
end
