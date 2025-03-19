class Flight <ApplicationRecord


  belongs_to :aircraft

  belongs_to :departure_airport, class_name: "Airport", foreign_key: "departure_airport_id"
  belongs_to :arrival_airport, class_name: "Airport" , foreign_key: "arrival_airport_id"


  has_many :users, through: :bookings
  has_many :bookings
   
end
