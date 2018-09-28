# frozen_string_literal: true

require 'factory_bot'
require 'faker'

FactoryBot.define do
  factory :list_item do
    sequence(:title) { |n| Faker::Lorem.sentence }
    sequence(:position) { |n| n }
    sequence(:description) { |n| Faker::Lorem.paragraph }
  end
end

def load_fixture(name)
  File.open(Rails.root.join("spec/fixtures/files/#{name}"))
end
