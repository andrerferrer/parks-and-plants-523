Garden.destroy_all if Rails.env.development? #destroy all gardens if we are running this locally
Plant.destroy_all if Rails.env.development? #destroy all plants if we are running this locally

Garden.create!(
  name: "My Little Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Garden.create!(
  name: "My Other Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

# create plants
plants_data = [
  {
    name: "Vanilla Orchid",
    picture_url: "https://static1.squarespace.com/static/596f7d5d17bffcd028cef774/5973a556c534a5ea5dcde821/5a1a643c71c10b644ba29407/1602514445664/vanilla+orchid.jpg?format=1500w",
    garden: Garden.first
  },
  {
    name: "Tillandsia Bromellia",
    picture_url: "https://vivoplantas.com.br/wp-content/uploads/2018/02/Tila.jpg",
    garden: Garden.first
  },
  {
    name: "Pau Brasilis",
    picture_url: "https://www.oeco.org.br/wp-content/uploads/2020/12/Oeco_Pau-brasil-cassio-vasconcelos.jpeg",
    garden: Garden.first
  }
]

plants_data.each do |plant_data|
    Plant.create!(plant_data)
end
