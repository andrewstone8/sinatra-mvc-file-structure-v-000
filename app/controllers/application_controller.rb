class ApplicationController < Sinatra::Base

  configure do
  	set :views, "app/views"
  	set :public_dir, "public"
  end

  get "/" do
  	@dog = Dog.new("rudolph", "dalmation", 2)
      erb :index
  end
end
