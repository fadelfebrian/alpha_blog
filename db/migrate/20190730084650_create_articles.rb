class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
    t.string :title
    t.text :description
    t.timestamp :created_at
    t.timestamp :updated_at
    end
  end
end
