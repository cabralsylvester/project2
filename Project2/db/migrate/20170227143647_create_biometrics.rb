class CreateBiometrics < ActiveRecord::Migration[5.0]
  def change
    create_table :biometrics do |t|
      t.integer :glucose
      t.integer :bmi
      t.integer :vitamin_d
    end
  end
end
