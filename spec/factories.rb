# frozen_string_literal: true

require 'factory_bot'
require 'faker'

FactoryBot.define do

end

def load_fixture(name)
  File.open(Rails.root.join("spec/fixtures/files/#{name}"))
end
