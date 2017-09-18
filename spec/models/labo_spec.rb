# == Schema Information
#
# Table name: labos
#
#  id               :integer          not null, primary key
#  name             :string(255)      not null
#  features         :text(65535)
#  crypted_password :string(255)
#  salt             :string(255)
#  string           :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

require 'rails_helper'

RSpec.describe Labo, type: :model do
end
