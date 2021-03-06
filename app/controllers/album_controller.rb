class AlbumController < ApplicationController
  before_action :authenticate_user!
  
  def new
    discogs = Discogs::Wrapper.new("vinyl-crate")

    album_id = params[:album_id].to_i
    type = params[:type]
    # if type == "master"
    #   record = discogs.get_master(album_id)
    # elsif type == "release"
    #   record = discogs.get_release(album_id)
    # end
    record = discogs.get_release(album_id)
    @album_title = record.title
    @album_id = record.id
    @album_artist = record.artists[0].name
    @album_label = record.labels[0].name
    @album_image = params[:image]
    @album_release_date = record.released
    @album_country = record.country
    @album_genre = record.genres[0]
    @album_subgenre = record.styles[0]
    @album_notes = record.notes
    # abort
  end

  def search
    @user = current_user
  end



end
