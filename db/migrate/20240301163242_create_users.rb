class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :e_mail
      t.string :name
      t.string :surname
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
