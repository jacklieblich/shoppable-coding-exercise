class AddInputsToCurrentSessions < ActiveRecord::Migration[5.0]
  def change
  	add_column :current_sessions, :inputs, :hstore, default: {a: 0, b: 0, x: 0, y: 0, ArrowUp: 0, ArrowDown: 0, ArrowLeft: 0, ArrowRight: 0}
  end
end
