class AlbumController < ApplicationController

  def new
    discogs = Discogs::Wrapper.new("vinyl-crate")

    album_id = params[:album_id].to_i
    type = params[:type]
    if type == "master"
      record   = discogs.get_master(album_id)
    elsif type == "release"
      record   = discogs.get_release(album_id)
    end
    @album_title = record.title
    @album_id = record.id
    @album_artist = record.artists[0].name
    @album_label = record.labels[0].name
    @album_image = params[:image]
    @album_release_date = record.released
    @album_country = record.country
    # abort
  end



end
