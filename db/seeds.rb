require 'open-uri'

puts 'Cleaning database...'
Product.destroy_all

puts 'Creating categories...'
condition = ['new', 'used', 'under maintenance'].sample

puts 'Creating bikes...'
file = URI.open('https://imgs.ponto.com.br/55005633/1xg.jpg')
caloi = Product.create!(price_cents: 15000, sku: 'Caloi', bike_condition: condition, user_id: 1)
caloi.photos.attached(io: file, filename: '1xg.jpg', content_type: 'image/jpg')
#Product.create!(price_cents: 25000, sku: 'Monark', category: kids 'https://imgs.casasbahia.com.br/1710359/1xg.jpg')
#Product.create!(price_cents: 100000, sku: 'Trek', category: eletric 'https://cdn.shopify.com/s/files/1/0899/5402/products/eb-02_perfil_1080x.png')
puts 'Finished!'
