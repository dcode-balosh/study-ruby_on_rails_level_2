require 'rails_helper'

describe 'Viewing the list of movies' do
  it 'shows the movies' do
    movie1 = Movie.create(title: "Iron Man",
                          rating: "PG-13",
                          total_gross: 318412101.00,
                          description: "Tony Stark builds an armored suit to fight the throes of evil",
                          released_on: "2008-05-02")

    visit 'http://localhost:3000/movie/1'

    expect(page).to have_text('3 Movies')
    expect(page).to have_text(movie1.title)
    expect(page).to have_text(movie2.title)
    expect(page).to have_text(movie3.title)

    expect(page).to have_text(movie1.rating)
    expect(page).to have_text(movie1.description[0..10])
    expect(page).to have_text(movie1.released_on)
    expect(page).to have_text("$318,412,101.00")

  end
end
