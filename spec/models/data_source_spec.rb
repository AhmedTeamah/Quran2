# frozen_string_literal: true

require 'rails_helper'

RSpec.describe DataSource do

  context 'with associations' do
   it { is_expected.to have_many :resource_contents }
 end

  context 'with columns and indexes' do
    columns = {
      name: :string,
      url: :string
    }

    it_behaves_like 'modal with column', columns
  end
end
