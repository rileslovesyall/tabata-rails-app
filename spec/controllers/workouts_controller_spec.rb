require 'rails_helper'
require 'pry'

RSpec.describe WorkoutsController, type: :controller do
  before :each do
    user = create(:user)
    session[:user_id] = user.id
  end
  describe "GET index" do
    
  end
  describe "GET show" do
    
  end
  describe "GET generator" do
    
  end
  describe "GET new" do
    
  end
  describe "POST create" do
    
  end
  describe "GET edit" do
    
  end
  describe "PUT update" do
    
  end
  describe "PUT completed" do
    
  end
  describe "DELETE destroy" do
    before :each do
      @workout = create(:workout)
    end
    it "redirects to user#show page" do
      expect{ delete :destroy, id: @workout.id }.to change(Workout, :count).by(-1)
    end
  end
end