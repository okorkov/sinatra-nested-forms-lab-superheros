require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
        erb :super_hero
    end

    post '/teams' do
        @params = params
        @team = params[:team]
        @heroes = params[:team][:members]
        erb :team
    end

end

# {"team"=>{"name"=>"asdasd", "motto"=>"dadsasd", "members"=>
#     [{"name"=>"dadsad", "power"=>"dadsasd", "biography"=>"dadssad"}, 
#         {"name"=>"dadad", "power"=>"dada", "biography"=>"d"}, 
#         {"name"=>"dasdasdad", "power"=>"dasda", "biography"=>"dadsdsd"}]}}