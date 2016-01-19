FactoryGirl.define do
  factory :user do |f|
    f.name 'User1'
    f.email 'user1@raul.com'
    f.password '12345678'
    f.password_confirmation '12345678'
  end
end