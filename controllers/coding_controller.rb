class CodingController < Sinatra::Base

  #sets root as the parent directory of the current file
  set :root, File.join(File.dirname(__FILE__), "..")
  set :views, Proc.new { File.join(root, "views") }

  configure :development do
    register Sinatra::Reloader
  end

  $code = [{
  	id: 0,
  	title: "HTML",
  	body: "<p>HTML is the standard markup language for creating Web pages and it stands for Hyper Text Markup Language</p>
    <p>HTML describes the structure of Web pages using markup. The different elements are the building blocks of HTML pages and they are represented by tags</p>"
  },
  {
    id: 1,
    title: "CSS",
    body: "<p>CSS stands for Cascading Style Sheets and  it describes how HTML elements are to be displayed on screen, paper, or in other media</p>
    <p>It can control the layout of multiple web pages all at once</p>"
  },
  {
    id: 2,
    title: "JavaScript",
    body: "<p>JavaScript is a high-level, dynamic, weakly typed, prototype-based, multi-paradigm, and interpreted programming language.</p>
    <p>Alongside HTML and CSS, JavaScript is one of the three core technologies of World Wide Web content production. </p>
    <p>It is used to make webpages interactive and provide online programs, including video games.</p>"
  }];

  get "/" do
    @title = "Coding_True"
    @coding = $code
    erb :'coding/home'
  end

  get "/coding" do
    @title = "Coding_True"
    @coding = $code
    erb :'coding/index'
  end

  get "/coding/new" do
    @title = "Coding_True"
    erb :'coding/new'
  end

  get "/coding/edit" do
    @title = "Coding_True"
    erb :'coding/edit'
  end
  
  get "/coding/:id" do
    id = params[:id].to_i
    @coder = $code[id]
    @title = "Coding_True"
    erb :'coding/show'
  end


  post "/coding/" do
    "New programming language"
  end

  put "/coding/:id" do
    id = params[:id]

    "Update: #{id}"
  end

  delete "/coding/:id" do
    id = params[:id]

    "Delete: #{id}"
  end
end
