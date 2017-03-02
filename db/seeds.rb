# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Biometric.destroy_all

# glucose = Biometric.create(user1: "Steph", user2: "Klay", user3: "KD")
# bmi = Biometric.create(user1: "Steph", user2: "Klay", user3: "KD")
# vitamin_d = Biometric.create(user1: "Steph", user2: "Klay", user3: "KD")


john = User.create(name: "John", height: "80", weight: "230")
steph = User.create(name: "Steph", height: "75", weight: "190")
klay = User.create(name: "Klay", height: "78", weight: "250")
kd = User.create(name: "Kevin Durant", height: "84", weight: "260")

Biometric.create(name: "glucose", measurement_type: "mg/dl", value: 100, description: "blood sugar", user: john)
Biometric.create(name: "glucose", measurement_type: "mg/dl", value: 100, description: "blood sugar", user: steph)
Biometric.create(name: "glucose", measurement_type: "mg/dl", value: 100, description: "blood sugar", user: klay)
Biometric.create(name: "glucose", measurement_type: "mg/dl", value: 100, description: "blood sugar", user: kd)
