w02d04_notes.md

building Movies!

		search spot

		posts poster
		name details


		from omdb

using an API
	uses JSON



{
@title = title
@year = year
}

JSON uses quotes so they need to be escaped.

#response = HTTParty.get('https://api.stackexchange.com/2.2/questions?site=stackoverflow')

#movie_hash = JSON(response)

#movie_hash[target_element] => element details!

homepage
-make search

	list out all previous searches.

	s = list of movies.

		click list to bring up individual movie data.

search=s

make each array from the search results and then wrap title search around the selectiosn.

single_response = HTTpParty (api #{search_has["Search"][number]{Title.gsub ' ', '+')})
>> single movie

inject reduce fold

practice making and using inject


movies.each do |movie| 
a href '/movies/


LABS/HW

get at least two done:

1) build i'm feeling lucky button.
2) make ratings stars & bubbles (tomatoes)
3) related movies , same as search, but using the 

put search form on every page.

