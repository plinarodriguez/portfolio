class CreatePostApps < ActiveRecord::Migration
  def change
    create_table :post_apps do |t|
      t.string :appName
      t.text :appDetails
      t.attachment :image
      t.string :appUrl

      t.timestamps 
    end
  end
end
