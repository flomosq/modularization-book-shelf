# frozen_string_literal: true

class ApplicationController < ActionController::API
  prepend_view_path(Dir.glob(Rails.root.join('components/*/app/views')))
end
