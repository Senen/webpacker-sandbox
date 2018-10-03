class PagesController < ApplicationController
  layout :resolve_layout

  def home; end

  def stimulus; end

  def vue; end

  def react; end

  private

  def resolve_layout
    case action_name
    when 'stimulus'
      'stimulus'
    when 'vue'
      'vue'
    when 'react'
      'react'
    else
      'coffee'
    end
  end

end
