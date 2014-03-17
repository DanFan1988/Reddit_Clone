# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

ActiveRecord::Base.transaction do
	Sub.create(:title => "Pics")
	Sub.create(:title => "Funny")
	Sub.create(:title => "Gaming")
	Sub.create(:title => "AskReddit")
	Sub.create(:title => "WorldNews")
	Sub.create(:title => "Videos")
end