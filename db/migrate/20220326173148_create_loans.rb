class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.references :lender_id, null: false
      t.references :borrower_id, null: false
      t.integer :amount

      t.timestamps
    end
  end
end
