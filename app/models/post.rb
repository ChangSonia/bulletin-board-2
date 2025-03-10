# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  body       :text
#  expires_on :date
#  integer    :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer
#  user_id    :string
#
class Post < ApplicationRecord
  validates(:title, presence: true)
  validates(:body, presence: true)
  validates(:expires_on, presence: true)
  
  belongs_to :board, foreign_key:"board_id"
  belongs_to :user, foreign_key:"user_id"
end
