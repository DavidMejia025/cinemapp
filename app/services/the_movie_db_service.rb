class TheMovieDbService
  def initialize
    Tmdb::Api.key("57a4bb311a4e36332fd525d34d2a30cf")
    Tmdb::Api.language("en")
    @configuration = Tmdb::Configuration.new
    @base_url      = @configuration.base_url
  end

  def get_movie_info(id:)
    movie = Tmdb::Movie.detail(id)
    
    {
      name:         get_name(movie),
      country:      get_country(movie),
      genres:       get_genres(movie),     
      release:      get_release(movie),
      score:        get_score(movie),
      duration_min: get_duration(movie),
      image:        get_image(movie),    
      synopsis:     get_synopsis(movie)
    }
  end
  
  private
    def get_genres(movie)
      genres = movie.dig("genres")

      genres.first["name"] if genres 
    end 

    def get_synopsis(movie)
      movie["overview"]
    end

    def get_image(movie)
      image_url = movie["poster_path"]

      @base_url + "w500" + image_url if image_url     
    end
    
    def get_country(movie)
      country = movie.dig("production_countries")

      country.first["name"] if country 
    end
    
    def get_release(movie)
      movie["release_date"]
    end
    
    def get_duration(movie)
      movie["runtime"]
    end
    
    def get_name(movie)
      movie["title"]
    end
    
    def get_score(movie)
      movie["vote_average"]
    end
  
end