module ApplicationHelper
  def homepage?
    controller_name == 'pages' && controller.action_name == 'home'
  end
end
