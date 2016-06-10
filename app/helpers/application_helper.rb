module ApplicationHelper

	def user_loged
        if current_user
            render "layouts/components_with_user"
        else
            render "layouts/components_without_user"
        end
    end

    def form_sign_up
    	unless current_user
    		render "welcome/form"
    	else
            render "welcome/disable_form"
        end
    end

    def image_status
        if current_user && $img.user_id == current_user.id
            render "users/image_status_adm"
        
        else
            render "users/image_status_other"
        end
    end
    
end
