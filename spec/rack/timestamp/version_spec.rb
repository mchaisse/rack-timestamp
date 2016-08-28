require 'spec_helper'

describe Rack::Timestamp do

  describe 'version' do
    it { expect(described_class::VERSION).not_to be nil }
  end
end
