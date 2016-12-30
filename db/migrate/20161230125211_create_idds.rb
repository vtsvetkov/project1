class CreateIdds < ActiveRecord::Migration[5.0]
  def change
    create_table :idds do |t|
      t.string :integration_id
      t.string :integration_name
      t.string :integration_type
      t.string :originating_system
      t.string :destination_system
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
