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
require 'test_helper'

class CattleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
