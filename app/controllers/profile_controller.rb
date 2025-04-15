class ProfileController < ApplicationController
  def home
  end

  def about
  end

  def portfolio
  end

  def movies
    puts "MOVIES ACTION CALLED" 
    @interests = [
      { 
        title: "Inception", 
        year: 2010, 
        link: "https://www.imdb.com/title/tt1375666/", 
        description: "A thief who steals corporate secrets..." 
      },
      { 
        title: "Parasite", 
        year: 2019, 
        link: "https://www.imdb.com/title/tt6751668/", 
        description: "Greed and class discrimination..." 
      }
    ]
    puts "INTERESTS: #{@interests.inspect}"
  end

  def songs
    @interests = [
      {
        title: "Bohemian Rhapsody",
        artist: "Queen",
        link: "https://open.spotify.com/track/7tFiyTwD0nx5a1eklYtX2J"
      }
    ]
  end

  def books
    @interests = [
      {
        title: "Dune",
        author: "Frank Herbert",
        link: "https://www.goodreads.com/book/show/44767458-dune"
      }
    ]
  end
end