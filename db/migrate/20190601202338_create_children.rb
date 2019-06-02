class CreateChildren < ActiveRecord::Migration[5.2]
  def change
    create_table :children do |t|
      t.string   :name,          null: false
      t.datetime :time_of_birth, null: false
      t.integer  :sex,           null: false, limit: 1

      t.timestamps
    end
  end
end
