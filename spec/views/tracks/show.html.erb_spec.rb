require 'rails_helper'

RSpec.describe "tracks/show", type: :view do
  before(:each) do
    @track = assign(:track, Track.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Artist/)
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
  end
end
