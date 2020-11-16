class ApplicationController < Sinatra::Base
  #set :bind, '0.0.0.0'
  #set :bind, '192.168.103.99'
  #set :bind, '192.168.200.185'
  set :views, proc { File.join(root, '../views/') }
  register Sinatra::Twitter::Bootstrap::Assets
  


  get '/' do
    erb :"application/index"
  end
end
