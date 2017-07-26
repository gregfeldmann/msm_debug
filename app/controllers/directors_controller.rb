class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def show
    @director = Director.find(params[:id])
    @director.save
    
  end

  def new form
  end

  def create_row
    @director = Director.new
   # @director.title = params[:title]
    @director.dob = params["dob"]
    @director.name = params["name"]
    @director.bio = params["bio"]
    @director.image_url = params["image_url"]

    @director.save

    render("show")
  end

  def edit_form
    @director = Director.find(params[:id])
   # don't save bc just showing the form
  end

  def update_row
    @director = Director.find(params[:id])

    @director.dob = params["dob"]
    @director.name = params["name"]
    @director.bio = params["bio"]
    @director.image_url = params["image_url"]

    @director.save

    render("show")
  end

  def destroy
    @director = Director.find(params[:id])

    @director.destroy
    
    redirect_to("/directors")
    
  end
end
