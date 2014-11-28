# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

davida = Artist.create({
	first_name: "Davida",
	last_name: "Allen",
	period: "PO-POMO",
	nationality: "Australian",
	date_of_birth: "20/10/1953",
	image: "http://c300221.r21.cf1.rackcdn.com/davida-allen-1951-australia-the-rude-painting-or-michael-and-me-oil-on-canvas-1645-x-2505-cm-1383896094_org.jpg"
	})

davida.paintings.create({
	title: "Number 1",
	year: "1970",
	medium: "Oil on board",
	style: "Cubist",
	image: "http://c300221.r21.cf1.rackcdn.com/davida-allen-1951-australia-the-rude-painting-or-michael-and-me-oil-on-canvas-1645-x-2505-cm-1383896094_org.jpg"
	})

davida.paintings.create({
	title: "Number 2",
	year: "1972",
	medium: "Oil on board",
	style: "Cubist",
	image: "http://c300221.r21.cf1.rackcdn.com/davida-allen-1951-australia-the-rude-painting-or-michael-and-me-oil-on-canvas-1645-x-2505-cm-1383896094_org.jpg"
	})

davida.paintings.create({
	title: "Number 3",
	year: "1974",
	medium: "Oil on board",
	style: "Cubist",
	image: "http://c300221.r21.cf1.rackcdn.com/davida-allen-1951-australia-the-rude-painting-or-michael-and-me-oil-on-canvas-1645-x-2505-cm-1383896094_org.jpg"
	})