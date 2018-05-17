class Patient < ApplicationRecord

  def self.create_examples
    factory = RGeo::Geographic.spherical_factory(srid:4326)
    p1 = factory.point(-22.919406, -43.233403)
    p2 = factory.point(-22.908005414278236,-43.27661438883353)
    p3 = factory.point(-22.935579, -43.234815)
  
    luiz = Patient.new(name: "Luiz")
    luiz.coordinates = p1
    estevao = Patient.new(name: "Estevao")
    estevao.coordinates = p2
    estevao.save
    luiz.save

    Region.where("ST_Intersects(geom, :bounds)", bounds: estevao.coordinates)
  end 
  
end
