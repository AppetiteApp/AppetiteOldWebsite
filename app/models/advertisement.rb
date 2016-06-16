class Advertisement < ActiveRecord::Base
  validates :dish, presence: true
  validates :phone, presence: true
  validates_format_of :phone, with: /\A(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}\z/, message: "Invalid phone number. Please enter a phone number in the format 000-000-0000"
  validates :price, presence: true, numericality: { message: "Invalid price. Please enter a valid decimal number" }
  validates :location, presence: true
  validates :description, presence: true

  scope :latest, ->(amount) { order(created_at: :desc).first(amount) }
end
