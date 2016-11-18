class CreateMoovies < ActiveRecord::Migration[5.0]
  def change
    create_table :moovies do |t|
      t.string :title
      t.string :cowscription

      t.timestamps
    end
  end
end
