class AddForeignKey < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :loans, :users, column: :lender_id_id
    add_foreign_key :loans, :users, column: :borrower_id_id
  end
end
