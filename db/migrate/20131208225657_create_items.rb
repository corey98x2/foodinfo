class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :image_url
      t.string :place
      t.decimal :price
      t.string :special
      t.decimal :rating
      t.string :user
      t.date :date

      t.timestamps
    end
  end
end
