		#!/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin/ruby

		require 'cgi'

		url = "http://www.google.com/search?hl=en&q={query}&btnI=I"
		query = ENV['POPCLIP_TEXT']
		url.sub!(/\{query\}/,CGI.escape(query))

		%x{open "#{url}"}
