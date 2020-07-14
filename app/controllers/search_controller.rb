class SearchController < ApplicationController
  def index
    @members = SearchResults.default_members(params[:nation])
  end
end
