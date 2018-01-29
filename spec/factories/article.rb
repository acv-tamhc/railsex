FactoryBot.define do
  factory :article do
    title "Article title"
    description "Article description"
    like 1
    published_at Time.now.zone
  end
end