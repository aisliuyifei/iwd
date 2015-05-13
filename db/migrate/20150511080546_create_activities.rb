class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :orgnizer_id
      t.string :name
      t.datetime :open_date
      t.text :description

      t.timestamps null: false
    end
  end
end
