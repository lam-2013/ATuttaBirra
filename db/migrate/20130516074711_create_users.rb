class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :cognome
      t.string :email
      t.string :datanascita
      t.string :città

      t.timestamps
    end
  end
end
