class ProjectsController < ApplicationController
	before_action :set_project, only: [:edit, :show, :destroy, :update]
	def index
		@projects = Project.all
	end

	def show

	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(projects_params)
		if @project.save
			redirect_to root_path, notice: "Erfolgreich gespeichert"
		else
			render "new"
		end
	end

	def edit

	end

	def update
		if @project.update(projects_params)
			redirect_to projects_path, notice: "Update erfolgreich"
		else
			render 'edit'
		end
	end

	def destroy
		@project.delete
		redirect_to projects_path, notice: "Projekt: #{@project.title} wurde geloescht."
	end

	private
		def set_project
			@project = Project.find(params[:id])
		end

		def projects_params
			params.require(:project).permit(:title, :description, :start_date)
		end
end
