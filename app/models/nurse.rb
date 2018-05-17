class Nurse < ApplicationRecord

def self.create_examples
  byebug
  factory = RGeo::Geographic.spherical_factory(srid:4326)
  p1 = factory.point(-22.90895414668246,-43.1839172452788)
  p2 = factory.point(-22.908005414278236,-43.27661438883353)

  amanda = Nurse.new(name: "Amanda")
  amanda.coordinates = p1
  debora = Nurse.new(name: "Debora")
  debora.coordinates = p2
  debora.save
  amanda.save
end 


end
