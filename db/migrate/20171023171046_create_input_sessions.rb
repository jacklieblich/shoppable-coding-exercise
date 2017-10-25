class CreateInputSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :input_sessions do |t|
      t.string :most_requested

      t.timestamps
    end
  end
end
