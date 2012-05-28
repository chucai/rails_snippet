#application_controller.rb中捕获异常 
  rescue_from Exception do|exception|
    render :json => {:result => "fail", :reason => "抛出异常" }.to_json
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => "您没有操作权限"
  end  
