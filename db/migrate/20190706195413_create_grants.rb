class CreateGrants < ActiveRecord::Migration[6.0]
  def change
    create_table :grants do |t|
      t.string :sector
      t.string :name 
      t.string :description 
      t.string :region 
      t.string :visibility 
      
      t.timestamps
    end
  end
end
