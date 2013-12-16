class CreateFilms < ActiveRecord::Migration
  def change
    create_table :films do |t|
      t.string :title
      t.string :year
      t.text :description
      t.string :actors

      t.timestamps
    end
  end
end
