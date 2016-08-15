class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :track_id
      t.string :name
      t.string :artist
      t.string :composer
      t.string :album
      t.string :genre
      t.string :kind
      t.integer :size
      t.integer :total_time
      t.integer :disc_number
      t.integer :disc_count
      t.integer :track_number
      t.integer :track_count
      t.integer :year
      t.integer :bpm
      t.date :date_modified
      t.date :date_added
      t.integer :bit_rate
      t.integer :sample_rate

      t.timestamps null: false
    end
  end
end
