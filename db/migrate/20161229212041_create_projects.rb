class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :Professional_Services_Org
      t.string :Customer_Name
      t.string :Sow_Name
      t.integer :Sow_Hours
      t.date :Start_Date
      t.date :Go_Live
      t.text :Project_Description

      t.timestamps
    end
  end
end
