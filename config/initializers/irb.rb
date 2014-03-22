if $0 == 'irb'
  include Acme

  ActiveRecord::Base.logger = ActiveSupport::Logger.new(STDOUT)
end
