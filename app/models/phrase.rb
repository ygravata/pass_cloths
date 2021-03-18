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

  def cattles_count
    self.cattles.count
  end

  def self.two_owners
    phrases = Phrase.all
    result = []
    phrases.each do |phrase|
      result << phrase if phrase.cattles_count == 2
    end
    result
  end
end
