class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :loans, class_name: 'Loan',
                  foreign_key: 'lender_id_id'
  has_many :loans, class_name: 'Loan',
                  foreign_key: 'borrower_id_id'
end
