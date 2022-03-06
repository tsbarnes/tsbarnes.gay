class CreateGenderLabels < ActiveRecord::Migration[7.0]
  def change
    create_table :gender_labels do |t|
      t.string :name

      t.timestamps
    end
  end
end
