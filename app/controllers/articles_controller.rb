class ArticlesController < ApplicationController
  include Paginable

  before_action :authenticate_user!, except: %i[index show]
  before_action :set_article, only: %i[edit update destroy]
  before_action :set_categories, only: %i[new create edit update]

  # rubocop: disable Metrics/AbcSize, Metrics/MethodLength
  def index
    @categories = Category.sorted
    category = @categories.select { |c| c.name == params[:category] }[0] if params[:category].present?

    @highlights = Article.includes(:category, :user)
                         .filter_by_category(category)
                         .filter_by_archives(params[:month_year])
                         .desc_order
                         .first(3)

    highlight_ids = @highlights.pluck(:id).join(',')

    @articles = Article.includes(:category, :user)
                       .without_highlights(highlight_ids)
                       .filter_by_category(category)
                       .filter_by_archives(params[:month_year])
                       .desc_order
                       .page(current_page)

    @archives = Article.group_by_month(:created_at, format: '%B %Y', locale: :en).count
  end

  def show
    @article = Article.includes(comments: :user).find(params[:id])
    authorize @article
  end

  def new
    @article = current_user.articles.new
    authorize @article
  end

  def create
    @article = current_user.articles.new(article_params)
    authorize @article

    if @article.save
      redirect_to @article,  notice: t('.success')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    if @article.update(article_params)
      redirect_to @article, notice: t('.success')
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy

    redirect_to root_path, notice: t('.success')
  end

  private

  def set_categories
    @categories = Category.sorted
  end

  def article_params
    params.require(:article).permit(:title, :body, :category_id)
  end

  def set_article
    @article = Article.find(params[:id])
    authorize @article
  end
end
