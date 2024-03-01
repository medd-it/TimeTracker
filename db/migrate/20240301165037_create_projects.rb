class CreateProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :projects do |t|
      t.string :code
      t.string :description
      t.string :start_date
      t.string :end_date

      t.timestamps
    end
  end
end
