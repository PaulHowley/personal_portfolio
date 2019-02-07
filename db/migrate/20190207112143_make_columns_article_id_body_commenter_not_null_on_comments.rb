class MakeColumnsArticleIdBodyCommenterNotNullOnComments < ActiveRecord::Migration[5.2]
  def change
    change_column_null :comments, :body, false
    change_column_null :comments, :commenter, false
    change_column_null :comments, :article_id, false
  end
end
