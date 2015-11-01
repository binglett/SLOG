class User < ActiveRecord::Base
  attr_accessor :password

  email_regex = /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i

  validates :username,  :presence => true,
            :length               => { :maximum => 50}
  validates :email,     :presence => true,
            :format               => { :with => email_regex},
            :uniqueness           => { :case_sensitive => false}
  validates :password, :confirmation => true,
            :presence             => true,
            :length               => { :within => 6..40}
  def has_password?(submitted_password)
    encrypted_password==encrypt(submitted_password)
  end
  def self.authenticate(email, submitted_password)
    user = find_by_email(email)

    return nil if user.nil?
    return user if user.has_password?(submitted_password)
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
