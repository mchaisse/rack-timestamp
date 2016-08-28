require 'spec_helper'

describe Rack::Timestamp do
  let(:app)     { ->(env) { [200, env, ['Hello World.']] } }
  subject       { described_class.new(app) }
  let(:request) { Rack::MockRequest.new(subject) }

  context 'when get a response' do
    let(:response) { request.get('/') }

    it { expect(response.status).to eq(200) }
  end

  describe 'rack timestamp inserted in rack environment' do
    let(:time) { Time.now }

    before(:each) do
      allow(Time).to receive(:now).and_return(time)
    end

    context 'when get a response' do
      let(:response) { request.get('/') }

      it { expect(response['rack.timestamp']).to be_a(String) }
      it { expect(response['rack.timestamp']).to eq(time.httpdate) }
    end
  end
end
