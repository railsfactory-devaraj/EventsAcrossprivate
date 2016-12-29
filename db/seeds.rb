# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.destroy_all
Event.destroy_all
address = [{line1: 'Madhapur', city: 'Hyderabad', country: 'India', pin: 500081},{line1: 'Ashok nagar', city: 'Chennai',country: 'India', pin: 600083},{line1: 'Electronics City', city: 'Bangalore', country: 'India', pin: 560100}]
address.each do |addr|
	Location.create(addr)
end
events = [{
			title: 'Overcoming Startup Compliance Nightmare - startUPCamp by eLagaan - With Navin Rungta',
	 		description: 'Compliance has been a big nightmare for founders. ',
	 	  url: "https://www.eventshigh.com/detail/Bangalore/b701cf28e958804b44090fa522977e31-overcoming-startup-compliance-nightmare-startupcamp"
	 	  },
	 	  {title: "The Showdown - NYE 2017",
	 	   description: "It's the last party of the year and we are making sure that you party in style, elegance and comfort by throwing the biggest bash of Bangalore.it's all about making the last party of the year a memorable one, it's your last hand - play your best bet! Open Area, Pool side", 
	 	   url: "https://www.eventshigh.com/detail/Bangalore/cbfe09dc09e525dd47b3bbeb11abccd3-the-showdown-nye-2017"
	 	   	},
	 	   	{title: "How to Nail the Pitch - Storytelling for Startups - With Debleena Roy, Venkat Subramanian",
	 	   		description: "People don’t want more information. They are up to their eyeballs in information.", url: "https://www.eventshigh.com/detail/Bangalore/c65ab12d39254383505f91c33a0bf0f6-how-to-nail-the-pitch"},{title: "New Year Party - Grand Celebration..Book before 28th december 2016 ", description: "People don’t want more information. ", url: "https://www.eventshigh.com/detail/Bangalore/d5f7f1cca21b0b550277606ba7adecc7-new-year-party-grand-celebration"},{title: "Big Bollywood Smash NYE 2017",description: "Join us for a toast this New year's Eve.", url: "https://www.eventshigh.com/detail/Bangalore/03ef294320488481af78b223173f131e-big-bollywood-smash-nye-2017"}]

events.each do |event|
	tmp = Event.new(event)
	tmp.starts_at = Date.today+7.days
	tmp.ends_at = Date.today+7.days+4.hours
	tmp.locations << Location.find(rand((Location.first.id)..(Location.last.id)))
	tmp.save
end