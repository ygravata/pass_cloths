# == Schema Information
#
# Table name: cattles
#
#  id          :bigint           not null, primary key
#  cattle_name :string
#  cattle_type :integer
#  politician  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cattle < ApplicationRecord
  has_many :pass_cloths
  has_many :phrases, through: :pass_cloths

  def only_one_owner
    array = []
    self.phrases.each do |phrase|
      array << phrase unless phrase.cattles_count == 2
    end
    array
  end

end
