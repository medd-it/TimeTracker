class CreateTimesheets < ActiveRecord::Migration[7.1]
  def change
    create_table :timesheets do |t|
      t.references :user, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true
      t.string :notes
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
