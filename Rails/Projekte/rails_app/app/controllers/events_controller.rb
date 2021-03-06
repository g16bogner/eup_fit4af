class EventsController < ApplicationController
	before_action :set_event, only: [:show, :edit, :update, :destroy]
	before_action :require_signin, except: [:index]	
	before_action :require_admin, only: [:destroy, :new, :create, :edit, :update]

	def index
		@events = Event.all #where("start_at >= ?", Time.now)
	end
	
	def past
		@events = Event.past
	end
	def show
		@likers = @event.likers
		if current_user
			@current_like = current_user.likes.find_by(event_id: @event.id)
		end
	end

	def new
		@event = Event.new
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			flash[:notice] = "Erfolgreich gespeichert."
			redirect_to events_url
		else
			render :new
		end
	end

	def edit
	end
	
	def update
		if @event.update(event_params)
			redirect_to events_url, notice: "Update war erfolgreich."
		else
			render :edit
		end
	end

	def destroy
		@event.destroy
		redirect_to events_url, alert: "Ich bin dann mal weg!"
	end

	private
		def event_params
			params.require(:event).permit(:name, :image_file, :capacity, :description, :location, :price, :start_at)
		end
	
		def set_event
			@event = Event.find(params[:id ])
		end
end
