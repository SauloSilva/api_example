class ApplicationController < ActionController::API
  rescue_from ActionController::RoutingError, ActionController::UnknownFormat, ::AbstractController::ActionNotFound, ActiveRecord::RecordNotFound, with: lambda { |exception| render_error(404, exception) }

  def actions_handler(action:, resource:, attrs: {})
    {
      :save => record_save(resource),
      :update => record_update(resource, attrs),
      :destroy => record_destroy(resource),
      :increase => record_increase(resource, attrs),
      :decrease => record_decrease(resource, attrs),
    }.fetch(action, -> { nil }).call
  end

  def record_save(resource)
    -> { render_chooiser(resource.save, resource) }
  end

  def record_update(resource, attrs)
    -> { render_chooiser(resource.update(attrs), resource) }
  end

  def record_destroy(resource)
    -> { render_chooiser(resource.destroy, resource) }
  end

  def record_increase(resource, attrs)
    -> { render_chooiser(resource.increase(attrs[:quantity]), resource) }
  end

  def record_decrease(resource, attrs)
    -> { render_chooiser(resource.decrease(attrs[:quantity]), resource) }
  end

  def render_chooiser(result, resource)
    if result
      render_200(resource)
    else
      render_422(resource)
    end
  end

  def render_422(resource)
    render json: resource, status: 422, adapter: :json_api, serializer: ActiveModel::Serializer::ErrorSerializer
  end

  def render_error(code, message)
    render json: { message: message }, status: code, adapter: :json_api
  end

  def render_200(resource)
    render json: resource
  end
end
