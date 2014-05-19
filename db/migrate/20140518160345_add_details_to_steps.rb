class AddDetailsToSteps < ActiveRecord::Migration
  def change
  	  add_column :steps, :transcript, :text
  	  add_column :steps, :length, :string
  end
end
