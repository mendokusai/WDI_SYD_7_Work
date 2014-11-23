to_do.md

checklist.rb
	\main.erb
		\form details
\views

\public
	\css

what does the file currently do?
	looks for existing file 
		makes new file || opens file

Form takes event from user
	sends them to /event 
		but they're redirected back to '/'

		@ /event
		it parses the parameters (event, time, am/pm, notes)
		then it takes the params and turns them into an array
			converts to json

		writes files to todo_db


		so i can now write multiple json strings to the file, but they're not as easy to extract from it as they were supposed to be.

		currently, my only way to retreive a jstring is to find the index of the ']' and then grab 0...[index]+1, which will only work for the first. I guess I can unshift the string out...

		




JSON parses array of deets
