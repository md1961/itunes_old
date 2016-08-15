require 'rails_helper'

RSpec.describe "tracks/index", type: :view do
  before(:each) do
    assign(:tracks, [
      Track.create!(
        :track_id => 1,
        :name => "Name",
        :artist => "Artist",
        :composer => "Composer",
        :album => "Album",
        :genre => "Genre",
        :kind => "Kind",
        :size => 2,
        :total_time => 3,
        :disc_number => 4,
        :disc_count => 5,
        :track_number => 6,
        :track_count => 7,
        :year => 8,
        :bpm => 9,
        :bit_rate => 10,
        :sample_rate => 11
      ),
      Track.create!(
        :track_id => 1,
        :name => "Name",
        :artist => "Artist",
        :composer => "Composer",
        :album => "Album",
        :genre => "Genre",
        :kind => "Kind",
        :size => 2,
        :total_time => 3,
        :disc_number => 4,
        :disc_count => 5,
        :track_number => 6,
        :track_count => 7,
        :year => 8,
        :bpm => 9,
        :bit_rate => 10,
        :sample_rate => 11
      )
    ])
  end

  it "renders a list of tracks" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Artist".to_s, :count => 2
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
  end
end
