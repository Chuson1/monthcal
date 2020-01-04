class User < ApplicationRecord
	validates :name, presence: true,
			length: { maximum: 16 }
	
	# @記号必須の正規表現
	VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
	validates :email, presence: true,
			format: { with: VALID_EMAIL_REGEX }
end
