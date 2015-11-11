class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.string :company
      t.string :entityname
      t.string :licensename
      t.string :licensetype
      t.string :licenseauthority
      t.date :issuedate
      t.date :expirationdate
      t.date :renewalperiodstart
      t.string :licensefee
      t.string :locationaddress
      t.string :billingaddress
      t.date :openingdate
      t.string :approvedby
      t.date :approvedbydate
      t.timestamps
    end
  end
end
