# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :track do
    track_id 1
    name "MyString"
    artist "MyString"
    composer "MyString"
    album "MyString"
    genre "MyString"
    kind "MyString"
    size 1
    total_time 1
    disc_number 1
    disc_count 1
    track_number 1
    track_count 1
    year 1
    bpm 1
    date_modified "2016-08-15"
    date_added "2016-08-15"
    bit_rate 1
    sample_rate 1
  end
end
