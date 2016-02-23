class EventsController < ApplicationController
	before_action :set_event, only: [:show, :edit, :update, :destroy]
	before_action :set_sidebar_events

	def index
		@events = Event.all #where("start_at >= ?", Time.now)
	end

	def show
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.create(event_params)
		redirect_to events_url
	end
	def edit
	end
	def update
		@event.update(event_params)
		redirect_to events_url
	end
	def destroy
		@event.destroy
		redirect_to events_url
	end

	private
		def event_params
			params.require(:event).permit(:name, :image_file, :capacity, :description, :location, :price, :start_at)
		end
		def set_sidebar_events
			@sidebar_events = Event.upcoming
		end	
		def set_event
			@event = Event.find(params[:id ])
		end
end
