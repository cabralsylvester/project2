class CreateBiometrics < ActiveRecord::Migration[5.0]
  def change
    create_table :biometrics do |t|
      t.string :name
      t.string :measurement_type
      t.integer :value
      t.string :description
      t.references :user
      t.timestamps
    end
  end
end
