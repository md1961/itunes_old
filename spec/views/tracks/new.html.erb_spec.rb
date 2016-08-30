require 'rails_helper'

RSpec.describe "tracks/new", type: :view do
  before(:each) do
    assign(:track, Track.new(
      :track_id => 1,
      :name => "MyString",
      :artist => "MyString",
      :album_artist => "MyString",
      :composer => "MyString",
      :album => "MyString",
      :genre => "MyString",
      :kind => "MyString",
      :size => 1,
      :total_time => 1,
      :start_time => 1,
      :disc_number => 1,
      :disc_count => 1,
      :track_number => 1,
      :track_count => 1,
      :year => 1,
      :bpm => 1,
      :bit_rate => 1,
      :sample_rate => 1,
      :comments => "MyString",
      :volume_adjustment => 1,
      :play_count => 1,
      :play_date => 1,
      :skip_count => 1,
      :rating => 1,
      :album_rating => 1,
      :album_rating_computed => false,
      :normalization => 1,
      :sort_album_artist => "MyString",
      :compilation => false,
      :artwork_count => 1,
      :sort_artist => "MyString",
      :sort_composer => "MyString",
      :sort_album => "MyString",
      :sort_name => "MyString",
      :persistent_id => "MyString",
      :disabled => false,
      :track_type => "MyString",
      :protected => false,
      :purchased => false,
      :has_video => false,
      :hd => false,
      :video_width => 1,
      :video_height => 1,
      :music_video => false,
      :file_type => 1,
      :location => "MyString",
      :file_folder_count => 1,
      :library_folder_count => 1
    ))
  end

  it "renders new track form" do
    render

    assert_select "form[action=?][method=?]", tracks_path, "post" do

      assert_select "input#track_track_id[name=?]", "track[track_id]"

      assert_select "input#track_name[name=?]", "track[name]"

      assert_select "input#track_artist[name=?]", "track[artist]"

      assert_select "input#track_album_artist[name=?]", "track[album_artist]"

      assert_select "input#track_composer[name=?]", "track[composer]"

      assert_select "input#track_album[name=?]", "track[album]"

      assert_select "input#track_genre[name=?]", "track[genre]"

      assert_select "input#track_kind[name=?]", "track[kind]"

      assert_select "input#track_size[name=?]", "track[size]"

      assert_select "input#track_total_time[name=?]", "track[total_time]"

      assert_select "input#track_start_time[name=?]", "track[start_time]"

      assert_select "input#track_disc_number[name=?]", "track[disc_number]"

      assert_select "input#track_disc_count[name=?]", "track[disc_count]"

      assert_select "input#track_track_number[name=?]", "track[track_number]"

      assert_select "input#track_track_count[name=?]", "track[track_count]"

      assert_select "input#track_year[name=?]", "track[year]"

      assert_select "input#track_bpm[name=?]", "track[bpm]"

      assert_select "input#track_bit_rate[name=?]", "track[bit_rate]"

      assert_select "input#track_sample_rate[name=?]", "track[sample_rate]"

      assert_select "input#track_comments[name=?]", "track[comments]"

      assert_select "input#track_volume_adjustment[name=?]", "track[volume_adjustment]"

      assert_select "input#track_play_count[name=?]", "track[play_count]"

      assert_select "input#track_play_date[name=?]", "track[play_date]"

      assert_select "input#track_skip_count[name=?]", "track[skip_count]"

      assert_select "input#track_rating[name=?]", "track[rating]"

      assert_select "input#track_album_rating[name=?]", "track[album_rating]"

      assert_select "input#track_album_rating_computed[name=?]", "track[album_rating_computed]"

      assert_select "input#track_normalization[name=?]", "track[normalization]"

      assert_select "input#track_sort_album_artist[name=?]", "track[sort_album_artist]"

      assert_select "input#track_compilation[name=?]", "track[compilation]"

      assert_select "input#track_artwork_count[name=?]", "track[artwork_count]"

      assert_select "input#track_sort_artist[name=?]", "track[sort_artist]"

      assert_select "input#track_sort_composer[name=?]", "track[sort_composer]"

      assert_select "input#track_sort_album[name=?]", "track[sort_album]"

      assert_select "input#track_sort_name[name=?]", "track[sort_name]"

      assert_select "input#track_persistent_id[name=?]", "track[persistent_id]"

      assert_select "input#track_disabled[name=?]", "track[disabled]"

      assert_select "input#track_track_type[name=?]", "track[track_type]"

      assert_select "input#track_protected[name=?]", "track[protected]"

      assert_select "input#track_purchased[name=?]", "track[purchased]"

      assert_select "input#track_has_video[name=?]", "track[has_video]"

      assert_select "input#track_hd[name=?]", "track[hd]"

      assert_select "input#track_video_width[name=?]", "track[video_width]"

      assert_select "input#track_video_height[name=?]", "track[video_height]"

      assert_select "input#track_music_video[name=?]", "track[music_video]"

      assert_select "input#track_file_type[name=?]", "track[file_type]"

      assert_select "input#track_location[name=?]", "track[location]"

      assert_select "input#track_file_folder_count[name=?]", "track[file_folder_count]"

      assert_select "input#track_library_folder_count[name=?]", "track[library_folder_count]"
    end
  end
end
