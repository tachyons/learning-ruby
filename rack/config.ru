class HelloWorld
	def call(env)
		req = Rack::Request.new env
		@path=req.params['path']
		@path=Dir.home()+"/"+@path
		#@path=@path.sub(/[^\s]+(\.(?i)(jpg|png|gif|bmp))$/,"image")
		@responce="";
		if File.directory?(@path)
			Dir.foreach(@path) {|x|
				x=x.gsub(/([^\s]+(\.(?i)(jpg|png|gif|bmp))$)/,"<img src=\"file://#{@path}\/\\0\"/>");
				[200,  { "Content-Type" => "image/html"}, [x] ]
				@responce+= "<li> #{x} </li>"
			}
		else
			@responce="Invalid Directory";
		end
		@responce.prepend("<html><head></head><body>");
		@responce+="</body></html>"
		[200,  { "Content-Type" => "text/html" }, [@responce] ]
	end
end
run HelloWorld.new

