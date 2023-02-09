class TabnewsController < ApplicationController
  before_action :set_global_tab_news_service

  def index
    @tab_news = @tab_news_service.general
  end

  def show
    @tab_news = @tab_news_service.show(params[:id])
  end

  private

  def set_global_tab_news_service
    @tab_news_service = Tabnews.new
  end
end
