# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Synth.destroy_all

ben = User.create(username: "ben", password_digest: "ben")
daftpunk = User.create(username: "daft", password_digest: "punk")

testsynth = Synth.create(user: ben, name: "test synth", osc_type_1: 'sine', osc_type_2: 'sawtooth', osc_freq_1: 440, osc_freq_2: 880, osc_gain: 0.4, distortion_curve: 'soft', distortion_gain: 20, delay_length: 0.2)
emptyTest = Synth.create(user: ben);