class SynthsController < ApplicationController
    def index
        synths = Synth.all
        render json: synths
    end

    def show
        synth = Synth.find(params[:id])
        render json: synth
    end

    def create
        synth = Synth.create(synth_params)
        render json: synth
    end 

    def update
        synth = Synth.find(params[:id])
        synth.update(synth_params)
        render json: synth
    end 

    def destroy
        synth = Synth.find(params[:id])
        synth.destroy
        render json: synth
    end

    private

    def synth_params
        params.permit(:user_id, :osc_type_1, :osc_type_2, :osc_freq_1, :osc_freq_2,
            :distortion_curve, :distortion_gain, :delay_length)
    end
end
