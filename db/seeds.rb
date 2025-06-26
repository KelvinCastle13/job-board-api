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
