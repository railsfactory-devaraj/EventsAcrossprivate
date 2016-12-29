module EventsHelper
	def search_events
		if params['title'] && params['location']
			@results = Event.search(query: { bool: {  must: [{ match: { 'locations.city' => params['location'] }},{ match: { "title" => params['title'] }}] }})
		elsif params['title']
			@results = Event.search(query: { match: { "title" => params['title'] }})
		elsif params['location']
			@results = Event.search(query: { match: { 'locations.city' => params['location'] }})
		# elsif params['date']
		# 	# in progress
		# 	@results = Event.search(query: {range: { starts_at: { gte: params['date'], lte: params['date'],format: "yyyy-MM-dd"}}})
		end
		return @results
	end
end