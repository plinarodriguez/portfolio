class CreatePostApps < ActiveRecord::Migration
  def change
    create_table :post_apps do |t|
      t.string :appName, null:false
      t.text :appDetails, null:false
      t.attachment :image, null:false
      t.string :appUrl, null:false

      t.timestamps null:false
    end
  end
end



