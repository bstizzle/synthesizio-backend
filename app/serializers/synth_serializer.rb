class SynthSerializer < ActiveModel::Serializer
  attributes :id, :name, :osc_type_1, :osc_type_2, :osc_freq_1, :osc_freq_2, :osc_gain, :distortion_toggle, :distortion_curve, :distortion_gain, :delay_length
  has_one :user
end
