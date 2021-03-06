# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Synth.destroy_all

ben = User.create(username: "ben", password: "ben")
daftpunk = User.create(username: "daft", password: "punk")

testsynth = Synth.create(user: ben, name: "test synth", osc_type_1: 'sine', osc_type_2: 'sawtooth', osc_freq_1: 440, osc_freq_2: 880, osc_gain: 0.3, distortion_toggle: false, distortion_curve: 'soft', distortion_gain: 20, delay_length: 0.2)
testsynth2 = Synth.create(user: ben, name: "test synth 2: electric boogaloo", osc_type_1: 'square', osc_type_2: 'triangle', osc_freq_1: 110, osc_freq_2: 329.63, osc_gain: 0.1, distortion_toggle: true, distortion_curve: 'soft', distortion_gain: 5, delay_length: 0)