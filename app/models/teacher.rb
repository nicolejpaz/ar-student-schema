require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  has_many :students, :through => :students_teachers

end