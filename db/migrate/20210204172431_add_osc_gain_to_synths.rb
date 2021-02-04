class AddOscGainToSynths < ActiveRecord::Migration[6.0]
  def change
    add_column :synths, :osc_gain, :float
  end
end
