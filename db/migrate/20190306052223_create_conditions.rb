class CreateConditions < ActiveRecord::Migration[5.2]
  def change
    create_table :conditions do |t|
      t.string      :name, null: false
      t.integer     :sort_by, null: false
      t.timestamps  null: false
    end
  end
end
