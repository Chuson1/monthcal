class User < ApplicationRecord
	validates :name, presence: true,
			length: { maximum: 16 }
	
	# @記号必須の正規表現
	VALID_EMAIL_REGEX = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/
	validates :email, presence: true,
			format: { with: VALID_EMAIL_REGEX }
	
	has_secure_password
	
	# パスワード文字数8〜32。アルファベット、数字の混合以外の値を受け付けない
	VALID_PASSWORD_REGEX = /\A(?=\d{0,99}+[a-z])(?=[a-z]{0,99}+\d)[a-z\d]{8,32}+\z/i
	validates :password, presence: true,
			format: { with: VALID_PASSWORD_REGEX }
end
