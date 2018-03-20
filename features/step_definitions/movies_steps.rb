Given /^the following movies exist:$/ do |table|
  table.hashes.each do |hash|
    Movie.create hash
  end
end

Then /^the director of "(.*)" should be "(.*)"/ do |movie_title, director|
  movie = Movie.where(:title => movie_title).first
  expect(movie.director).to eq director
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  expect(/.*#{e1}.*#{e2}/m).to match(page.body)
end