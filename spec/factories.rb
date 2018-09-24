# frozen_string_literal: true

require 'factory_bot'
require 'faker'

FactoryBot.define do
  factory :list_item do
    title { Faker::Lorem.sentence }
    sequence(:position) { |n| n }
    description { Faker::Lorem.paragraph }
  end
end

def load_fixture(name)
  File.open(Rails.root.join("spec/fixtures/files/#{name}"))
end
