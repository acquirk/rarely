# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                  "Adam Quirk"
  user.email                 "bullemhead@gmail.com"
  user.password              "highball"
  user.password_confirmation "highball"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :micropost do |micropost|
  micropost.content "Hello please, thanks you and hello again!"
  micropost.association :user
end
