class FiguresController < ApplicationController
  # add controller methods

  get '/figures' do
    #binding.pry
    @figures = Figure.all
    #  binding.pry
    # html = open(192.168.0.17/5/off)
    # ping = Nokogiri::HTML(html)   
    # binding.pry
#    redirect to "192.168.0.17"
    #binding.pry
    erb :"figures/index"
  end

  get '/figures/new' do
    @landmarks = Landmark.all
    @titles = Title.all
    erb :"figures/new"
  end

  post '/figures' do
    @figure = Figure.create(params[:figure])
    
    if !params[:landmark][:name].empty?
      @figure.landmarks  << Landmark.create(name: params[:landmark][:name])
    end

    if !params[:landmark][:id].empty?
      array = params[:landmark][:id]
      array.each do |i|
        @landmark = Landmark.find_by_id(i.to_i)
        @landmark.figure_id = @figure.id
        @landmark.save
      end
    end

    if !params[:title][:name].empty?
      @figure.titles  << Title.create(name: params[:title][:name])
    end

    if !params[:title][:id].empty?
      array = params[:title][:id]
      array.each do |i|
        @mm = FigureTitle.create
        @mm.title_id = i.to_i
        @mm.figure_id = @figure.id
        @mm.save
      end
    end
    redirect to "figures/#{@figure.id}"
    #redirect to "www.google.com"
end

  get '/figures/:id' do
    erb :"figures/show"
  end

  get '/figures/:id/edit' do
    erb :"figures/edit"
  end

  patch '/figures/:id' do
    redirect to "figures/#{@figure.id}"
  end

end
