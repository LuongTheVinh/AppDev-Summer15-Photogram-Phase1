class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
    render('index.html.erb')
  end

  def show
    photo_data = Photo.find(params['id'])
    @photo_source = photo_data.source
    @photo_caption = photo_data.caption

    render('show.html.erb')
  end

  def destroy
    Photo.find(params['id']).destroy
    @list_of_photos = Photo.all

    render('index.html.erb')
  end

  def new_form
    render('new_form.html.erb')
  end

end
