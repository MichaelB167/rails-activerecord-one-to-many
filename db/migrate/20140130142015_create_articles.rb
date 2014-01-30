class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.references :user, index: true
      t.text :title
      t.text :body

      t.timestamps
    end
  end
end