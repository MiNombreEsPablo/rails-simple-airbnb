# frozen_string_literal: true

class CreateFlats < ActiveRecord::Migration[7.0]
  def change
    create_table :flats do |t|
      t.string :name
      t.string :address
      t.text :description
      t.integer :price_per_night
      t.integer :number_of_guests
      t.string :image_url

      t.timestamps
    end
  end
end
