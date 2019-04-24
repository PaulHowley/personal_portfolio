class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :commenter, null: false
      t.text :body, null: false
      t.integer :article_id, null: false

      t.timestamps
    end
  end
end
