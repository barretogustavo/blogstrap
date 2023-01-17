class AddCategoryToArticles < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    add_reference :articles, :category, null: false, foreign_key: true
  end
end
