include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :team do
    name 'Sharks'
    icon { fixture_file_upload( Rails.root.join('spec', 'images', 'test.png'), 'image/png' ) }
    division
    season
  end
end
