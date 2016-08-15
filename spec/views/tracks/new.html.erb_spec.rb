require 'rails_helper'

RSpec.describe "tracks/new", type: :view do
  before(:each) do
    assign(:track, Track.new(
      :track_id => 1,
      :name => "MyString",
      :artist => "MyString",
      :composer => "MyString",
      :album => "MyString",
      :genre => "MyString",
      :kind => "MyString",
      :size => 1,
      :total_time => 1,
      :disc_number => 1,
      :disc_count => 1,
      :track_number => 1,
      :track_count => 1,
      :year => 1,
      :bpm => 1,
      :bit_rate => 1,
      :sample_rate => 1
    ))
  end

  it "renders new track form" do
    render

    assert_select "form[action=?][method=?]", tracks_path, "post" do

      assert_select "input#track_track_id[name=?]", "track[track_id]"

      assert_select "input#track_name[name=?]", "track[name]"

      assert_select "input#track_artist[name=?]", "track[artist]"

      assert_select "input#track_composer[name=?]", "track[composer]"

      assert_select "input#track_album[name=?]", "track[album]"

      assert_select "input#track_genre[name=?]", "track[genre]"

      assert_select "input#track_kind[name=?]", "track[kind]"

      assert_select "input#track_size[name=?]", "track[size]"

      assert_select "input#track_total_time[name=?]", "track[total_time]"

      assert_select "input#track_disc_number[name=?]", "track[disc_number]"

      assert_select "input#track_disc_count[name=?]", "track[disc_count]"

      assert_select "input#track_track_number[name=?]", "track[track_number]"

      assert_select "input#track_track_count[name=?]", "track[track_count]"

      assert_select "input#track_year[name=?]", "track[year]"

      assert_select "input#track_bpm[name=?]", "track[bpm]"

      assert_select "input#track_bit_rate[name=?]", "track[bit_rate]"

      assert_select "input#track_sample_rate[name=?]", "track[sample_rate]"
    end
  end
end
