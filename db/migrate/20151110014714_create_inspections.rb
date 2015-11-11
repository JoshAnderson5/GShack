class CreateInspections < ActiveRecord::Migration
  def change
    create_table :inspections do |t|
    	t.string :inspectionentityname
    	t.date :inspectiondate
    	t.string :inspectiondescription
    	t.text :inspectionnotes
      t.timestamps
    end
  end
end
