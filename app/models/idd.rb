class Idd < ApplicationRecord
  belongs_to :project
  def completed?
    !out_of_scope_datetime.blank?
  end
end
