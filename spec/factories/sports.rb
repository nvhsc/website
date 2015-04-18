include ActionDispatch::TestProcess

FactoryGirl.define do
  factory :sport do
    name 'Hockey'
    description { Faker::Lorem.paragraphs(3).join("\n\n") }
    icon { fixture_file_upload( Rails.root.join('spec', 'images', 'test.png'), 'image/png' ) }
  end
end
