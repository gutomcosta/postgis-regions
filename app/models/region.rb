class Region < ApplicationRecord

  def self.create_an_example
    factory = RGeo::Geographic.spherical_factory(srid:4326)
    points = [
      factory.point(-22.913848247664742,-43.17419571697735),
      factory.point(-22.898984547195216,-43.17780060589337),
      factory.point(-22.89309722811191,-43.19292068481445),
      factory.point(-22.898451210039347,-43.20801300823712),
      factory.point(-22.906832040418802,-43.209557960629695),
      factory.point(-22.912366267081627,-43.205094764828914),
      factory.point(-22.91568669463514,-43.200288246274226),
      factory.point(-22.909836362924253,-43.1934217911961),
      factory.point(-22.91523502160402,-43.1791877746582),
      factory.point(-22.91523502160402,-43.179187774658)
    ]

    wkt = "MULTIPOLYGON ((( -22.913848247664742 -43.17419571697735, " \
      "-22.898984547195216 -43.17780060589337, " \
      "-22.89309722811191 -43.19292068481445, " \
      "-22.898451210039347 -43.20801300823712, " \
      "-22.906832040418802 -43.209557960629695, " \
      "-22.912366267081627 -43.205094764828914, " \
      "-22.91568669463514 -43.200288246274226, " \
      "-22.909836362924253 -43.1934217911961, " \
      "-22.91523502160402 -43.1791877746582, " \
      "-22.91523502160402 -43.179187774658)))"

    ring = factory.linear_ring(points)
    boundary = factory.polygon(ring)

    region = Region.new(name: "Centro")
    region.geom = boundary
    region.save

    points = [
      factory.point( -22.911044930859497,-43.23592185974121),
      factory.point(-22.911044930859497,-43.23592185974121),
      factory.point(-22.91575740997499,-43.22672942758027),
      factory.point(-22.9232521187945,-43.220587959881186),
      factory.point(-22.927584705216464,-43.22457441936763),
      factory.point(-22.93182304685698,-43.22465125639212),
      factory.point(-22.934005902735315,-43.23708800920235),
      factory.point(-22.935843883334535,-43.23989897646351),
      factory.point(-22.936100834379854,-43.24597157860728),
      factory.point(-22.931081163935914,-43.25433997758614),
      factory.point(-22.928715037827565,-43.26589939635613),
      factory.point(-22.91923414217513,-43.26939030989172),
      factory.point(-22.914343765067834,-43.2592063775958)
    ]

    ring = factory.linear_ring(points)
    boundary = factory.polygon(ring)

    region = Region.new(name: "Tijuca")
    region.geom = boundary
    region.save

  end

end
