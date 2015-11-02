class User < ActiveRecord::Base
  attr_accessor :password

  email_regex = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :username,  :presence => true,
            :length               => { :maximum => 50}
  validates :email,     :presence => true,
            :format               => { :with => email_regex},
            :uniqueness           => { :case_sensitive => false}
  validates :password,    :confirmation => true,
            :presence             => true,
            :length               => { :within => 6..40}
  before_save :encrypt_password
  def has_password?(submitted_password)
    encrypted_password==encrypt(submitted_password)
  end
  def self.authenticate(email, submitted_password)
    user = self.find_by email: email
    if user && user.encrypted_password == Digest::SHA2.hexdigest("#{user.salt}--#{submitted_password}")
      user
    else
      nil
    end
  end
  private
    def encrypt_password
      self.salt = Digest::SHA2.hexdigest("#{Time.now.utc}--#{password}") if self.new_record?
      self.encrypted_password = encrypt(password)
    end

    def encrypt(pass)
      Digest::SHA2.hexdigest("#{self.salt}--#{pass}")
    end
end
