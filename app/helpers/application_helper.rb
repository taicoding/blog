# frozen_string_literal: true

module ApplicationHelper
  def resource_name
    :user
  end

  # Rails/HelperInstanceVariable: Do not use instance variables in helpers.
  # rubocop:disable Rails/HelperInstanceVariable
  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  # rubocop:enable Rails/HelperInstanceVariable
end
