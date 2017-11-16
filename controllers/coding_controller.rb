class CodingController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), "..")
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  $code = [{
	 id: 0,
	 title: "HTML",
	 body: "<h1> This is a Header </h1>"
  },
  {
    id: 1,
    title: "CSS",
    body: "This is how you change your background color: background-color: black;"
  },
  {
    id: 2,
    title: "JavaScript",
    body: "This language doesn't matter"
  }];

  get "/" do
    @title = "Coding Webpage"
    @coding = $code

    erb :'coding/index'
  end

  get "/sources" do
    @title = "Sources"
    @coding = $code

    erb :'coding/sources'
  end

  get "/sources/examples" do
    @title = "Examples"
    erb :'coding/examples'
  end
end
