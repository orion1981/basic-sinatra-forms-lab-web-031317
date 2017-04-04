require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/team' do
    @new_team = params[:name]
    @new_coach = params[:coach]
    @new_pg = params[:pg]
    @new_sg = params[:sg]
    @new_pf = params[:pf]
    @new_sf = params[:sf]
    @new_c = params[:c]
    erb :team
  end
end
