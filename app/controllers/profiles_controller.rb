class ProfilesController < ApplicationController

  # GET /profiles/1/edit
  def edit
    @profile = current_user.profile
    if @profile.phones.empty?
      @profile.phones << Phone.new(phone_type: 'Mobile', number: '11')
      @profile.phones << Phone.new(phone_type: 'Mobile', number: '22')
      @profile.phones << Phone.new(phone_type: 'Mobile', number: '33')
    end
  end

  def update
    @profile = current_user.profile
    @profile.update!(profile_params)
    flash[:notice] = "Your profile has been updated."
    render 'edit'
  end

  private

  def profile_params
    params
      .require(:profile)
      .permit(
        :first_name,
        :last_name,
        :date_of_birth,
        phones_attributes: [
        :id,
        :phone_type,
        :number,
        :_destroy
        ])
  end
end
