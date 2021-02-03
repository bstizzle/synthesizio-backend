class CreateSynths < ActiveRecord::Migration[6.0]
  def change
    create_table :synths do |t|
      t.string :osc_type_1
      t.string :osc_type_2
      t.float :osc_freq_1
      t.float :osc_freq_2
      t.string :distortion_curve
      t.integer :distortion_gain
      t.float :delay_length
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
