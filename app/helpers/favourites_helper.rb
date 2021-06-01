module FavouritesHelper
  def fav_or_unfav_button(movie, favourite)
    if favourite
      button_to "♡ Unfav", movie_favourite_path(movie, favourite), method: :delete
    else
      button_to "♥️ Fav", movie_favourites_path(movie)
    end
  end
end
