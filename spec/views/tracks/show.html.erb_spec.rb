require 'rails_helper'

RSpec.describe "tracks/show", type: :view do
  before(:each) do
    @track = assign(:track, Track.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Artist/)
    expect(rendered).to match(/Album Artist/)
    expect(rendered).to match(/Composer/)
    expect(rendered).to match(/Album/)
    expect(rendered).to match(/Genre/)
    expect(rendered).to match(/Kind/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/10/)
    expect(rendered).to match(/11/)
    expect(rendered).to match(/12/)
    expect(rendered).to match(/Comments/)
    expect(rendered).to match(/13/)
    expect(rendered).to match(/14/)
    expect(rendered).to match(/15/)
    expect(rendered).to match(/16/)
    expect(rendered).to match(/17/)
    expect(rendered).to match(/18/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/19/)
    expect(rendered).to match(/Sort Album Artist/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/20/)
    expect(rendered).to match(/Sort Artist/)
    expect(rendered).to match(/Sort Composer/)
    expect(rendered).to match(/Sort Album/)
    expect(rendered).to match(/Sort Name/)
    expect(rendered).to match(/Persistent/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Track Type/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/21/)
    expect(rendered).to match(/22/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/23/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/24/)
    expect(rendered).to match(/25/)
  end
end
