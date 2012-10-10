class PeopleController < ApplicationController
  def index
    redirect_to root_path
  end
  def show
    redirect_to people_path
  end
  def new
    @person = Person.new
    render :action => "edit"
  end
  def edit
    @person = Person.find(params[:id])
  end
  def create
    @person = Person.new(params[:person])
    if @person.save
      redirect_to root_path, notice: 'Person was successfully created.'
    else
      render action: "new"
    end
  end
  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(params[:person])
      redirect_to root_path, notice: 'Person was successfully updated.'
    else
      render action: "edit"
    end
  end
  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    redirect_to root_path, notice: 'Person was successfully removed.'
  end
end
