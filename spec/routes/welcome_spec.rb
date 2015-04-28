describe Acme::Routes::Welcome do
  describe 'GET /' do
    it 'is ok' do
      get '/'
      expect(last_response).to be_ok
    end
  end
end
