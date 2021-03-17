# == Schema Information
#
# Table name: phrases
#
#  id         :bigint           not null, primary key
#  text       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Phrase < ApplicationRecord
  has_many :pass_cloths
  has_many :cattles, through: :pass_cloths
end
