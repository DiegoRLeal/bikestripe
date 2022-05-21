puts 'Cleaning database...'
Product.destroy_all
Category.destroy_all

puts 'Creating categories...'
urban = Category.create!(name: 'urban')
kids = Category.create!(name: 'kids')
eletric = Category.create!(name: 'eletric')

puts 'Creating bikes...'
Product.create!(price_cents: 15000, sku: 'original-caloi-bike', name: 'Caloi', category: urban, photo_url: 'https://imgs.ponto.com.br/55005633/1xg.jpg')
Product.create!(price_cents: 25000, sku: 'original-monark-bike', name: 'Monark', category: kids, photo_url: 'https://imgs.casasbahia.com.br/1710359/1xg.jpg')
Product.create!(price_cents: 100000, sku: 'original-trek-bike', name: 'Trek', category: eletric, photo_url: 'https://cdn.shopify.com/s/files/1/0899/5402/products/eb-02_perfil_1080x.png')
puts 'Finished!'
