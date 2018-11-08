class AlbumController < ApplicationController

  def new
    discogs = Discogs::Wrapper.new("vinyl-crate")

    album_id = params[:album_id].to_i
    type = params[:type]
    if type == "master"
      @record   = discogs.get_master(album_id)
    elsif type == "release"
      @record   = discogs.get_release(album_id)
    end

    abort
  end



end
