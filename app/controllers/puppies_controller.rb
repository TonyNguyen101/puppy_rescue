class PuppiesController < ApplicationController
  
  def index
  	@puppies = Puppy.all
  end

  def new
  	@puppy = Puppy.new
  end

  def create
   	@puppy = Puppy.new(puppy_params)
   	if @puppy.save
   		redirect_to puppies_path, flash: {success: "Puppy created!"}
   	else
   		render :new
   	end	
  end

  def show
  	find_puppy
  end

  def edit
  	find_puppy
  end

  def update
  	find_puppy.update(puppy_params)
		if find_puppy.save
			redirect_to puppy_path(find_puppy), notice: "Puppy updated"
		else
			render :edit
		end		
  end

  def destroy
  	find_puppy.destroy
  	redirect_to puppies_path, alert: "Puppy removed"
  end

  private 
  	def puppy_params	
  		params.require(:puppy).permit(:name, :age, :breed, :image, :bio)
  	end
  	def find_puppy
  		@puppy = Puppy.find_by_id params[:id]
  		@puppy
  	end
end
