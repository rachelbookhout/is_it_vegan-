class CreateRecipe < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
       t.string :name
       t.integer :yummly_id
       t.string :image
       t.text :ingrediants
       t.text :instructions
       t.string :source
       t.timestamps
    end
    create_table :favorites do |f|
      f.integer :recipe_id
      f.integer :user_id
      f.timestamps
    end
  end
end
