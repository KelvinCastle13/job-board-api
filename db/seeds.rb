# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Job.create!(company_id: 1, title: "associate", description: "A person with limited or subordinate membership of an organization.", url: "url", location: "guam", active: true, salary_range: "$50,000 - $51,000")
Job.create!(company_id: 2, title: "secretary", description: "A pereson employed to handle office work.", url: "url", location: "texas", active: true, salary_range: "$60,000 - $61,000")



company = Company.create(
  name: "General Mills",
  logo: "https://en.wikipedia.org/wiki/File:General_Mills_logo.svg",
  description: "Food company based in Minneapolis"
)
company = Company.create(
  name: "PepsiCo",
  logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a6/PepsiCo_logo.svg/960px-PepsiCo_logo.svg.png",
  description: "Food and beverage company based in New York"
)
company = Company.create(
  name: "Google",
  logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Google_2015_logo.svg/560px-Google_2015_logo.svg.png",
  description: "Technology company based in Mountain View"
)
company = Company.create(
  name: "Amazon",
  logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Amazon_logo.svg/500px-Amazon_logo.svg.png",
  description: "Technology and e-commerce company based in Seattle"
)
company = Company.create(
  name: "CVS Health",
  logo: "https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/CVS_Health_Logo.svg/610px-CVS_Health_Logo.svg.png",
  description: "Health care solutions company"
)


user = User.create!(name: "Kelvin", email: "Kelvin@email.com", password_: "123", password_confirmation: "123")
user = User.create!(name: "Marylin", email: "Maryliin@email.com", password: "123", password_confirmation: "123")
user = User.create!(name: "Amelia", email: "Amelia@email.com", password: "123", password_confirmation: "123")
