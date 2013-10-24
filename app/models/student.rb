require_relative '../../db/config'

class Student < ActiveRecord::Base
  has_many :teachers, :through => :students_teachers
  validates :email, :uniqueness => true, :format => { :with => /\S@{1}\S*\S.{1}\S{2}/ }
  validates :age, :numericality => { :greater_than => 5 }
  validates :phone, :format => { :with => /\d{3}\W*\d{3}-{1}\d{4}/ }
  
  def name
    "#{first_name} #{last_name}"
  end

  def age
    (DateTime.now - birthday).to_i / 365
  end
  
end