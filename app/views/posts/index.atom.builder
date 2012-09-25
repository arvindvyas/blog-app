atom_feed do |feed|
	 feed.title "My blog Blog Feed"
	 @posts.each do |post|
	 	feed.entry(post) do |entry|
	 		entry.title post.title
	 		entry.comment post.text
	 	end
	 end
	end