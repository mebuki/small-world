FactoryBot.define do
  factory :event do
    name                    { "aaa" }
    purpose_id              { 1 }
    event_date              { 2020-11-22 }
    event_time              { "12:00" }
    place                   { "osaka" }
    info                    { "aaaaaaa" }
    association :user

    after(:build) do |event|
      event.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end