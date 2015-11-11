class CreateViolations < ActiveRecord::Migration
  def change
    create_table :violations do |t|
    	t.string :violationentityname
    	t.date :violationdate
    	t.string :violationdescription
    	t.text :violationnotes
      t.timestamps
    end
  end
end
