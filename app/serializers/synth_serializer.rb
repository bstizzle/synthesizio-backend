class SynthSerializer < ActiveModel::Serializer
  attributes :id, :osc_type_1, :osc_type_2, :osc_freq_1, :osc_freq_2, :distortion_curve, :distortion_gain, :delay_length
  has_one :user
end
