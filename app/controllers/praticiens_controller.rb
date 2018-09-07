class PraticiensController < ApplicationController
	helper_method :sort_column, :sort_direction
	def new
	    @praticien = Praticien.new
	end

	def create
	    @praticien  = Praticien.new(praticien_params)

	   if @praticien.save
	      redirect_to @praticien
	    else
	      render 'new'
	    end	     
	end

  	def index
	    #@praticiens = Praticien.all
	    if !params[:nbtodisplay] 
	    	params[:nbtodispla] = 20
	    end
	    if params[:display_archive]
	    	@praticiens = Praticien.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => params[:nbtodisplay], :page => params[:page]).where(:archive => params[:display_archive])
	    else
	    	@praticiens = Praticien.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => params[:nbtodisplay], :page => params[:page]).where(:archive => false)
	    end
	    #@praticiens = Praticien.where(:archive => params[:display_archive])
	end

	def show
	    @praticien = Praticien.find(params[:id])
	end

	def edit
	    @praticien = Praticien.find(params[:id])
	end

	def update
	    @praticien = Praticien.find(params[:id])
	   
	    if @praticien.update(praticien_params)
		redirect_to @praticien
	    else
		render 'edit'
	    end
	end

  	def destroy
      		@praticien = Praticien.find(params[:id])
    		@praticien.destroy
    		redirect_to praticiens_path
  	end

  	def import
  		Praticien.import(params[:file])
  		redirect_to root_url, notice: "Données importées !"
  	end 
	
	private
	def praticien_params
		params.require(:praticien).permit(:file, :data, :nom, :prenom, :email, :tel, :pratique, :maxsenss, :kids, :archive, :text)
	end
  
  	def sort_column
    	Praticien.column_names.include?(params[:sort]) ? params[:sort] : "Nom"
  	end
  
  	def sort_direction
    	%w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  	end
end
