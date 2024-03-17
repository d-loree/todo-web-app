class CreateNotes < ActiveRecord::Migration[7.1]
  def change
    create_table :notes do |t|
      t.string :title
      t.text :body
      t.integer :task_id

      t.timestamps
    end
  end
end
