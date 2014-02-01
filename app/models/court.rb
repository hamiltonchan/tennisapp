class Court
  include Mongoid::Document
  field :number, type: Integer
  field :booked, type: Boolean
end
