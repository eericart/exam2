class Teacher < ActiveRecord::Base
  has_many :subjects
   accepts_nested_attributes_for :subjects,:allow_destroy => true,

  def amount_subjects
    return 0 if subjects.empty?
  end
end
