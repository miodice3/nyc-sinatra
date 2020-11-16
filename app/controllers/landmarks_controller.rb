class LandmarksController < ApplicationController
  # add controller methods

  get '/landmarks' do
    erb :"landmarks/index"
  end

  get '/landmarks/new' do
    erb :"landmarks/new"
  end

  get '/landmarks/:id' do
    erb :"landmarks/show"
  end

  get '/landmarks/:id/edit' do
    erb :"landmarks/edit"
  end

end
