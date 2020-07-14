class SearchController < ApplicationController
  def index
    @members = SearchResults.new(params[:nation])
  end
end
