class Court
  include Mongoid::Document
  field :number, type: Integer
  field :booked, type: Boolean

  validates :number, numericality: true, presence: true

end
