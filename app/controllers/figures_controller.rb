require 'pry'

class FiguresController < ApplicationController

  get '/figures' do
     @figures = Figure.all
    erb :'figures/index'
  end

  get '/figures/new' do
    @titles = Title.all
    erb :'figures/new'
  end

  get '/figures/:id' do
    erb :'figures/index'
  end





end
