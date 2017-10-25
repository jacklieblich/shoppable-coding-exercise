class CreateCurrentSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :current_sessions do |t|
    	
      t.timestamps
    end
  end
end
