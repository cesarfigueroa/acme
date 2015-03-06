module Acme
  module Helpers
    def template(name, *args)
      directory = self.class.name.split('::').last.downcase
      erb File.join(directory, name.to_s).to_sym, *args
    end
  end
end
