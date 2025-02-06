require_relative "../../app/helpers/rails_admin_tag_list/suggestions_helper"

module RailsAdminTagList
  class Engine < ::Rails::Engine
    initializer 'rails_admin_tag_list.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        if self.respond_to?(:helper)
          helper RailsAdminTagList::SuggestionsHelper
        end
      end
    end
  end
end
