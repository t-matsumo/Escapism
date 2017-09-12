# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  username         :string(255)      not null
#  year             :integer
#  email            :string(255)      not null
#  labo             :integer
#  role             :integer
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
    username "user_1"
    year 2016
    email "yaaaaaakishi@gmail.com"
    labo 1
    salt "asdasdastr4325234324sdfds"
    crypted_password Sorcery::CryptoProviders::BCrypt.encrypt("password", "asdasdastr4325234324sdfds")
  end

  factory :no_name_user, class: User do
    year 2016
    email "noname@gmail.com"
    labo 2
    salt "asdasdastr4325234324sdfds"
    crypted_password Sorcery::CryptoProviders::BCrypt.encrypt("password", "asdasdastr4325234324sdfds")
  end

  factory :no_mail_user, class: User do
    username "no_mail"
    year 2016
    labo 3
    salt "asdasdastr4325234324sdfds"
    crypted_password Sorcery::CryptoProviders::BCrypt.encrypt("password", "asdasdastr4325234324sdfds")
  end

  factory :no_year_user, class: User do
    username "no_year"
    email "c5617146@aoyama.com"
    labo 2
    salt "asdasdastr4325234324sdfds"
    password Sorcery::CryptoProviders::BCrypt.encrypt("password", "asdasdastr4325234324sdfds")
  end

  factory :no_labo_user, class: User do
    username "no_labo"
    year 2016
    email "c5617146@aoyama.com"
    salt "asdasdastr4325234324sdfds"
    password Sorcery::CryptoProviders::BCrypt.encrypt("password", "asdasdastr4325234324sdfds")
  end

  factory :no_password_user, class: User do
    username "no_pass"
    year 2016
    email "c5617146@aoyama.com"
    labo 2
    salt "asdasdastr4325234324sdfds"
  end

  factory :it_aoyama_user, class: User do
    username "it_aoyama"
    year 2016
    email "c5617146@aoyama.com"
    labo 2
    salt "asdasdastr4325234324sdfds"
    password Sorcery::CryptoProviders::BCrypt.encrypt("password", "asdasdastr4325234324sdfds")
  end
end
