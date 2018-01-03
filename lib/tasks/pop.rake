namespace :pop do
  desc "Populate Beers"
  task breweries: :environment do
    50.times do
      brewery = Brewery.create(name: Faker::Company.name)
      50.times { Beer.create(name: Faker::Beer.name, type: Faker::Beer.style) }
    end
  end
end
