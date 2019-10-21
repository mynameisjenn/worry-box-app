class CreateWorries < ActiveRecord::Migration[5.1]
  def change
    create_table :worries do |t|
      t.string :current_worry
      t.integer :priority
      t.text :reflection

      t.timestamps
    end
  end
end
