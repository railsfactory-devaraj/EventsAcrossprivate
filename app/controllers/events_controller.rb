class EventsController < ApplicationController
	include EventsHelper
	def index
		begin
			@events = Event.all
			@result[:data] = JSON.parse(@events.to_json(:include => {:locations => {:except => [:created_at,:updated_at,:id]}}))
	    @result[:status_code] = 200
		 	@result['success_message'] = 'Events successfully listed!!'
		 	render component: 'Events', props: { presenter: @result }
		rescue Exception => e
			@result['error_message'] = e.message
			@result['status_code'] = 400
			@show_header = false
			render component: 'Exception', props: { exception: e.message }
		end
	end

	def search
		begin
			@events = search_events
			@result['data'] = @events.records.to_json(:include => {:locations => {:except => [:created_at,:updated_at,:id]}})
			@result[:status_code] = 200
			if @events.records.count == 0
		 		@result['success_message'] = "no events found"
		 	else
		 		@result['success_message'] = "search events"
		 	end
		rescue Exception => e
			@result['error_message'] = e.message
			@result['status_code'] = 400
		end
		render :json => @result
	end
end
