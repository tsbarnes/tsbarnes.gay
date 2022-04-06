class CreateLinks < ActiveRecord::Migration[7.0]
  def change
    create_table :links do |t|
      t.string :site_name
      t.string :username
      t.string :site_icon_name
      t.string :profile_url

      t.timestamps
    end
  end
end
