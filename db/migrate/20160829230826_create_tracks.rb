class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.integer :track_id
      t.string :name
      t.string :artist
      t.string :album_artist
      t.string :composer
      t.string :album
      t.string :genre
      t.string :kind
      t.integer :size
      t.integer :total_time
      t.integer :start_time
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
      t.string :comments
      t.integer :volume_adjustment
      t.integer :play_count
      t.integer :play_date
      t.date :play_date_utc
      t.integer :skip_count
      t.date :skip_date
      t.date :release_date
      t.integer :rating
      t.integer :album_rating
      t.boolean :album_rating_computed
      t.integer :normalization
      t.string :sort_album_artist
      t.boolean :compilation
      t.integer :artwork_count
      t.string :sort_artist
      t.string :sort_composer
      t.string :sort_album
      t.string :sort_name
      t.string :persistent_id
      t.boolean :disabled
      t.string :track_type
      t.boolean :protected
      t.boolean :purchased
      t.boolean :has_video
      t.boolean :hd
      t.integer :video_width
      t.integer :video_height
      t.boolean :music_video
      t.integer :file_type
      t.string :location
      t.integer :file_folder_count
      t.integer :library_folder_count

      t.timestamps null: false
    end
  end
end
