require 'spec_helper'

describe PapyrusBlog::BlogController do
  render_views

  describe '#index' do
    it 'should return list of blog post' do
      get :index
      
      response.should be_success
    end

    it 'should return list of blog tagged as category1' do
      get :index, :tag => 'category1'
      
      response.should be_success
    end

    it 'should return list of blog created by Alexey Artamonov' do
      get :index, :author => 'Alexey Artamonov'

      response.should be_success
    end
  end

  describe '#show' do
    it 'should show selected blog post' do
      get :show, :id => '01'

      response.should be_success
    end
  end
end
