class CreateUserEmails < ActiveRecord::Migration
  def change
    create_table :user_emails do |t|
      t.string :email_address
      t.date :date_created
    end
  end
end
