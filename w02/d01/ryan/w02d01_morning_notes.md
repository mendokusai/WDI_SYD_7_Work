#w02d01_morning_notes.rb

#intro to web
# => request to server
# => sinatra
# => html/css
# => DSL =  digital subscriber Language
# => Forms

# Tuesday html/css
# Wednesday 
# APIs send and receive data from other webservices (facebook, twitter, etc)
# Thursday Big Labs
# Friday How to use files (rewrite) (pre-Database)
# Friday = Guest Speaker (GIT)

#ip address is your address on the internet
#addresses:  123.123.123.123
# 198.168.1.1 # => local addresses

#ping google.com (74.125.237.200)

# website t0
#DNS Layer 

#nslookup <site>
#server: 10.22.0.1
#address: 10.22.0.1#53 {local to me details (GA website)}

# MBP-6666:ryan portabledino$ nslookup ryanpauley.com
# Server:		10.22.0.1
# Address:	10.22.0.1#53

# Non-authoritative answer:
# Name:	ryanpauley.com
# Address: 208.113.145.8

# ways to get into different parts of the computer

# [   0   ]	port 80 - default http; hyper text transfer protocol
# [   0   ] 663 = secure
# [   0   ] 21 - File Transfer Protocol * use ssh | sftp instead 
# [   0   ]

# clients 		v 		servers
# chrome		-->		Google.com servers
#	   (request packets)
#    				<---
#  						(response: html, css, response headers, .js, )


# server hardware
# 	most times talking about server software
# 	like apache
# 		opens port 80, lets in requests, 
# 			find files/forwards to location (app_server) 
# 	app_server


# server

# responses: Method, Status, Type

# GET # => go and get file
# HEAD # => information
# POST # => send parameters to server (user name, email, etc, not used for creating details)
#    post / blog-post title="hello"; content = "welcome" <- request body
#  *create a new 
# PUT # => PUT /blog-post/1
#  			on submission of form:
# 				title:"hello world"
# DELETE # => delete record in database
# OPTIONS #
# PATCH # => similar (newer version of put)

# rest representational state transfer (REST-ful complies with REST)
		# list
		# show
		# edit
		# update
		# create
		# destory
		#CRUD
			# create
			# read
			# update
			# destory


# server codes:
# 1xx - informational (switching protocols)
# 2xx - everything okay (successful)
# 	200: okay
# 	201: Created
# 	202: Accepted
# 3xx - redirects (something moved, google.com > google.com.au)
# 	301: Permanent
# 	302: Found(Temporary) {SEO impact}
# 	304:
# 	307:

# 4xx - not accessable (404 -page not found, 403- forbidden)
# 	400: bad request 
# 	401: Unauthorized
# 	404: Not found
# 5xx - error(server side)
# 	500: Internal server error
# 	501: 
# 	503: Service unavailable

# Headers v body

# metadata in request
# example: text/html text/plain video/mp4
# extra information to help the server respond
# list of http header 

# get head - check to see if site has been updated since last view

URI - Universal Resource Identifer
	/screencasts - list of screencasts
	/screencasts/1 - singualar screencasts

method - what we want to do |get post put patch, deleteshow/list, create, update, delete
	headers - extra information
	response body = content
	request body = parameters/ details/form fields|
	
	request = what is being sent to the server
	response - what is being sent back fom the server
	client browser ftp
	server  process orprogram on a computer
	port - address to a program on a computer
	ip - address to a computer

	dns - way to translate urls to ips

	status codes
	











