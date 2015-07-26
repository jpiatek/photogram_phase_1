class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show

    @photoid = params["id"]
    p = Photo.all
    @photo = @list_of_photos



    # Photo.find({ :id => "2"})

    # Photo.where({:id => "1"}).show(photo.source)

      "http://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Lake_Bondhus_Norway_2862.jpg/1280px-Lake_Bondhus_Norway_2862.jpg"

    render "application.html.erb"

  end


end
