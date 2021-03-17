# == Schema Information
#
# Table name: pass_cloths
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  cattle_id  :bigint           not null
#  phrase_id  :bigint           not null
#
# Indexes
#
#  index_pass_cloths_on_cattle_id  (cattle_id)
#  index_pass_cloths_on_phrase_id  (phrase_id)
#
# Foreign Keys
#
#  fk_rails_...  (cattle_id => cattles.id)
#  fk_rails_...  (phrase_id => phrases.id)
#
require 'test_helper'

class PassClothTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
