class CreateRelationships < ActiveRecord::Migration[5.2]
def change  
    create_table :follows do |t|  
      t.references :following, index: true, foreign_key: { to_table: :users }  
      t.references :followed, index: true, foreign_key: { to_table: :users }  

      t.timestamps  

      t.index [:following_id, :followed_id], unique: true  
    end  
  end  
end  
