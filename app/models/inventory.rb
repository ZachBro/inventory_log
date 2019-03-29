class Inventory < ApplicationRecord
  belongs_to :employee_out, class_name: 'Employee',
            foreign_key: 'employee_out_id', optional: true
  belongs_to :employee_in, class_name: 'Employee',
            foreign_key: 'employee_in_id', optional: true

  validates :employee_out_id, presence: true
  validates :employee_in_id, presence: true, on: :update 
end
