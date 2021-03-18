class CreateEmails < ActiveRecord::Migration[6.0]
  def change
    create_table :emails do |t|
      t.string :title
      t.string :email
      t.text :description

      t.timestamps
    end
  end
end
