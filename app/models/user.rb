# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string
#  image           :text
#  cohort_id       :integer
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string
#  is_admin        :boolean          default("false")
#

class User < ActiveRecord::Base
  has_secure_password
  belongs_to :cohort
  has_many :comments
  validates :name, :presence => true, :uniqueness => true

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end

end