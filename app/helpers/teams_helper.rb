module TeamsHelper
  def button_to_add_a_user(form)
    button_to_function("Add a user") do |page|
      form.fields_for(:users, User.new, :child_index => '_INDEX_') do |u|
        html = render :partial => 'user_form', :locals => {:f => u}
        logger.debug("html returned from render: " + html)
        page << %(Element.insert("users", { bottom: update_index_in(#{html.to_json})}))
      end
    end
  end
end