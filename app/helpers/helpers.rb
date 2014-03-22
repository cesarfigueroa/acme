module Acme
  module Helpers
    def template(name, *args)
      directory = self.class.name.demodulize.downcase
      erb File.join(directory, name.to_s).to_sym, *args
    end
  end
end
