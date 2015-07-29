class PhotosController < ApplicationController

  def index
    @list_of_photos = Photo.all
  end

  def show
    @photoid= params["id"]
    @photo = Photo.find_by({ :id =>@photoid}).source
    @caption = Photo.find_by({ :id => @photoid}).caption
    render "application"
  end


  def destroy
    @list_of_photos = Photo.all
    @photoid= params["id"]
    @bye = Photo.find_by({ :id => @photoid}).destroy
     render "delete"
  end


  def new_form
    render "new"
   end



   def edit
    @photoid= params["id"]
    @photo = Photo.find_by({ :id =>@photoid}).source
    @caption = Photo.find_by({ :id => @photoid}).caption



    render "edit"
   end


end
