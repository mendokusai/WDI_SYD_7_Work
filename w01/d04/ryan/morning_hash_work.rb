people_csv = [
  "Jack,Watson-Hamblin,info@fluffyjack.com,123 Fake Street,Fake Town", 
  "Ryan,Pauley,ryanpauley@gmail.com,81 Banambila,Canberra",
  "Santa,Claus,ruNasty@aol.com,1 North Pole,Greenland", 
  "Tom,Wolfe,tom@toms.com,23 Grenwich,New York",
  "Buffalo,Bill,lotionRubber@murderator.com,23 Hanford,Connecticut", 
  "Tony,Abbot,imanidiot@au.gov,1 Parliment,Canberra",
  "Barry,Obama,barack@ws.gov,71 Pennsylvania,Washington D.C.", 
  "Juniper,Pauley,junipertheenigma@gmail.com,81 Banambila,Canberra",
  "Charlie,Dontsurf,chuck@geocities.org,2 San Quentin,California", 
  "Eric,Pauley,ericpauley@gmail.com,2341 Capertree,California"
]


people_hashes = people_csv.map do |entry| 
	parts = entry.split(",")
	{
    first_name: parts[0],
    last_name: parts[1],
    email: parts[2],
    street_address: parts[3],
    suburb: parts[4]
  }
end

p people_hashes

