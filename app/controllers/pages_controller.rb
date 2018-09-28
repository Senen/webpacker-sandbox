class PagesController < ApplicationController
  layout :resolve_layout

  def home; end

  def stimulus; end

  def vue; end

  private

  def resolve_layout
    case action_name
    when 'stimulus'
      'stimulus'
    when 'vue'
      'vue'
    else
      'coffee'
    end
  end

end
