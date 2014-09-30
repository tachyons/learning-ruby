class HelloWorld
	def call(env)
		req = Rack::Request.new env
		@path=req.params['path']
		@path=Dir.home()+"/"+@path
		@responce="";
		if File.directory?(@path)
			Dir.foreach(@path) {|x| @responce+= "<li> #{x} </li>" }
		else
			@responce="Invalid Directory";
		end
		[200,  { "Content-Type" => "text/html" }, [@responce] ]
	end
end
run HelloWorld.new

