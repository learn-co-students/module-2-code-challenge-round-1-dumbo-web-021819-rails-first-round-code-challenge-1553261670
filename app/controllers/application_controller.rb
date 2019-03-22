class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  	# Checks if the instance passed in is valid
  	# redirects to that instance's show view if
  	# valid, otherwise, render the fallback view
  def redirect_by_validity(instance, fallback)
	 if instance.valid?
		redirect_to instance
	 else
	  render fallback
	 end
	end
end
