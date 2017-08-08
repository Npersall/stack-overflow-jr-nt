class User < ApplicationRecord
  has_many :questions, foreign_key: :author_id
  has_many :answers, foreign_key: :commenter_id
  has_many :votes, foreign_key: :voter_id
  has_many :comments, foreign_key: :commenter_id
  has_many :answered_questions, through: :answers, source: :question

  validates :username,  :password_digest, {presence: true}
  validates :email, {uniqueness: true}

  has_secure_password
end
