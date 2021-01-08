class SearchController < ApplicationController
  def index
    @poems = PoemSearchFacade.poem_search(params[:author])
  end
end
