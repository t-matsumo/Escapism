# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  username         :string(255)      not null
#  year             :integer
#  email            :string(255)      not null
#  crypted_password :string(255)
#  salt             :string(255)
#  created_at       :datetime
#  updated_at       :datetime
#
# Indexes
#
#  index_users_on_email     (email) UNIQUE
#  index_users_on_username  (username) UNIQUE
#

FactoryGirl.define do
  factory :user do
    username "user1"
    year 2016
    email "yaaaaaakishi@gmail.com"
    crypted_password Sorcery::CryptoProviders::BCrypt.encrypt("secret", salt)
    salt asdasdastr4325234324sdfds
  end
end
