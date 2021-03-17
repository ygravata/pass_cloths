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
end
