class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :user
      t.string :content
      t.references :Article, foreign_key: true

      t.timestamps
    end
  end
end
