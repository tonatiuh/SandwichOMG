FactoryGirl.define do
  factory :sandwich do
    name "Some cool name"
  end
  
  factory :ingredient do
    name "another cool name"
    association :sandwich_id, factory: :sandwich
  end
end