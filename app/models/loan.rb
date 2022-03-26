class Loan < ApplicationRecord
  belongs_to :lender_id, class_name: 'User'
  belongs_to :borrower_id, class_name: 'User'
end
