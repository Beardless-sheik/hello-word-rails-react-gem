class CreateMessageTable < ActiveRecord::Migration[6.1]
  def change
    create_table :message do |t|
      t.string :greeting

      t.timestamps
    end
  end
end
