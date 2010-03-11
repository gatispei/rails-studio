class TeamsController < ApplicationController
  helper TeamsHelper

def new
  @team = Team.new()
end

def create
  @team = Team.new(params[:team])
  @team.save!
  redirect_to team_path(@team)
end

def update
  @team = Team.find(params[:id])
  @team.update_attributes(params[:team])
  flash["Team " + @team.name + " was deleted."]
  redirect_to team_path(@team)
end

def edit
  @team = Team.find(params[:id])
end

def show
  @team = Team.find(params[:id])
end

def index
  @teams = Team.find(:all)
end

def destroy
  @team = Team.find(params[:id])
  @team.destroy
  flash["Team " + @team.name + " was deleted."]
  redirect_to teams_path
end

end  