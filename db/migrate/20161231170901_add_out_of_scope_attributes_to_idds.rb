class AddOutOfScopeAttributesToIdds < ActiveRecord::Migration[5.0]
  def change
    add_column :idds, :out_of_scope_datetime, :datetime
    add_column :idds, :out_of_scope_reason, :text
  end
end
