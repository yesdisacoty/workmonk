class Organizations::RegistrationsController < Devise::RegistrationsController
  def create
    super do |resource|
      if params[:plan]
        resource.plan_id = params[:plan]
        if resource.plan_id == 3 || resource.plan_id == 4
          resource.save_with_payment
        else
          resource.save
        end
      end
    end
  end
end