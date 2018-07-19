
class LandmarksController < ApplicationController

  get '/landmarks/new' do
    erb :'landmarks/new'
  end

  post '/landmarks' do
    Landmark.create(name: params[:name],figure_id: params[:figure_id], year_completed: params[:year_completed])
    erb :"landmarks/index"
  end

  get '/landmarks' do
    @landmarks = Landmark.all
    erb :'landmarks/index'
  end

  get '/landmarks/:id' do
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/show'
  end

  get '/landmarks/:id/edit' do
    @landmark = Landmark.find(params[:id])
    erb :'landmarks/edit'
  end

  patch '/landmarks/:id' do

    @landmark = Landmark.find(params[:id])
    @landmark.update(params["landmark"])
    redirect to "/landmarks/#{@landmark.id}"
  end
end
