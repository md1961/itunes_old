require 'rails_helper'

RSpec.describe "tracks/index", type: :view do
  before(:each) do
    assign(:tracks, [
      Track.create!(
        :track_id => 1,
        :name => "Name",
        :artist => "Artist",
        :album_artist => "Album Artist",
        :composer => "Composer",
        :album => "Album",
        :genre => "Genre",
        :kind => "Kind",
        :size => 2,
        :total_time => 3,
        :start_time => 4,
        :disc_number => 5,
        :disc_count => 6,
        :track_number => 7,
        :track_count => 8,
        :year => 9,
        :bpm => 10,
        :bit_rate => 11,
        :sample_rate => 12,
        :comments => "Comments",
        :volume_adjustment => 13,
        :play_count => 14,
        :play_date => 15,
        :skip_count => 16,
        :rating => 17,
        :album_rating => 18,
        :album_rating_computed => false,
        :normalization => 19,
        :sort_album_artist => "Sort Album Artist",
        :compilation => false,
        :artwork_count => 20,
        :sort_artist => "Sort Artist",
        :sort_composer => "Sort Composer",
        :sort_album => "Sort Album",
        :sort_name => "Sort Name",
        :persistent_id => "Persistent",
        :disabled => false,
        :track_type => "Track Type",
        :protected => false,
        :purchased => false,
        :has_video => false,
        :hd => false,
        :video_width => 21,
        :video_height => 22,
        :music_video => false,
        :file_type => 23,
        :location => "Location",
        :file_folder_count => 24,
        :library_folder_count => 25
      ),
      Track.create!(
        :track_id => 1,
        :name => "Name",
        :artist => "Artist",
        :album_artist => "Album Artist",
        :composer => "Composer",
        :album => "Album",
        :genre => "Genre",
        :kind => "Kind",
        :size => 2,
        :total_time => 3,
        :start_time => 4,
        :disc_number => 5,
        :disc_count => 6,
        :track_number => 7,
        :track_count => 8,
        :year => 9,
        :bpm => 10,
        :bit_rate => 11,
        :sample_rate => 12,
        :comments => "Comments",
        :volume_adjustment => 13,
        :play_count => 14,
        :play_date => 15,
        :skip_count => 16,
        :rating => 17,
        :album_rating => 18,
        :album_rating_computed => false,
        :normalization => 19,
        :sort_album_artist => "Sort Album Artist",
        :compilation => false,
        :artwork_count => 20,
        :sort_artist => "Sort Artist",
        :sort_composer => "Sort Composer",
        :sort_album => "Sort Album",
        :sort_name => "Sort Name",
        :persistent_id => "Persistent",
        :disabled => false,
        :track_type => "Track Type",
        :protected => false,
        :purchased => false,
        :has_video => false,
        :hd => false,
        :video_width => 21,
        :video_height => 22,
        :music_video => false,
        :file_type => 23,
        :location => "Location",
        :file_folder_count => 24,
        :library_folder_count => 25
      )
    ])
  end

  it "renders a list of tracks" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Artist".to_s, :count => 2
    assert_select "tr>td", :text => "Album Artist".to_s, :count => 2
    assert_select "tr>td", :text => "Composer".to_s, :count => 2
    assert_select "tr>td", :text => "Album".to_s, :count => 2
    assert_select "tr>td", :text => "Genre".to_s, :count => 2
    assert_select "tr>td", :text => "Kind".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => "Comments".to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
    assert_select "tr>td", :text => 15.to_s, :count => 2
    assert_select "tr>td", :text => 16.to_s, :count => 2
    assert_select "tr>td", :text => 17.to_s, :count => 2
    assert_select "tr>td", :text => 18.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 19.to_s, :count => 2
    assert_select "tr>td", :text => "Sort Album Artist".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 20.to_s, :count => 2
    assert_select "tr>td", :text => "Sort Artist".to_s, :count => 2
    assert_select "tr>td", :text => "Sort Composer".to_s, :count => 2
    assert_select "tr>td", :text => "Sort Album".to_s, :count => 2
    assert_select "tr>td", :text => "Sort Name".to_s, :count => 2
    assert_select "tr>td", :text => "Persistent".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Track Type".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 21.to_s, :count => 2
    assert_select "tr>td", :text => 22.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 23.to_s, :count => 2
    assert_select "tr>td", :text => "Location".to_s, :count => 2
    assert_select "tr>td", :text => 24.to_s, :count => 2
    assert_select "tr>td", :text => 25.to_s, :count => 2
  end
end
