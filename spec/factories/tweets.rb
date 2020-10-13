FactoryBot.define do
  factory :tweet do
    title          { "aaa" }
    text           { "aaaaa" }
    association :user

    after(:build) do |event|
      event.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end