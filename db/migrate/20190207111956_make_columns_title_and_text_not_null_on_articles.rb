class MakeColumnsTitleAndTextNotNullOnArticles < ActiveRecord::Migration[5.2]
  def change
    change_column_null :articles, :title, false
    change_column_null :articles, :text, false
  end
end
