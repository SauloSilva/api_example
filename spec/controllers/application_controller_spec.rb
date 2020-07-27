require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe '#actions_handler(action:, resource:, attrs: {})' do
    it 'when actions_handler not found keys' do
      result = described_class.new.actions_handler(action: :foo, resource: {})
      expect(result).to be_nil
    end
  end
end
