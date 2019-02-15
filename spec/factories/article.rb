FactoryBot.define do
  factory :article do
    title { Faker::Lorem.sentence }
    text { Faker::Lorem.paragraphs(5) }
  end
end