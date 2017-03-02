class BiometricsController < ApplicationController
  def index
  @biometrics = Biometric.all
end

def show
  @biometric = Biometric.find(params[:id])
end

def edit
  @biometrics = Biometric.find(params[:id])

end

def update
  @biometrics = Biometric.find(params[:id])
  @biometrics.update(@biometrics)

  redirect_to user_biometric_path(@biometrics)
end


end
