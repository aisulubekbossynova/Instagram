class User < ApplicationRecord
	has_secure_password
	has_one_attached :avatar

	validates_presence_of :email, :username
	validates_uniqueness_of :email, :username
	validates :password, length: {minimum: 6, maximum: 39}
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :update

	#validates_format_of :email, message: 'The e-mail format is not correct!'
	validates :username, :password, format: { with: /\A[0-9a-zA-Z_.\- ]+\Z/, message: "Only alphanumeric characters, spaces and -_."}
	validates :username, length: {maximum: 30}
	before_create {self.email = email.downcase}
	before_create {self.username = username.downcase}

	before_save :destroy_image?
def check_box(method, options = {}, checked_value = "1", unchecked_value = "0")
end
  def image_delete
    @image_delete ||= "0"
  end

  def image_delete=(value)
    @image_delete = value
  end

private
  def destroy_image?
    self.avatar.clear if @image_delete == "1"
  end

end
