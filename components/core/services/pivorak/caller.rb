module Pivorak
  module Caller
    def call(*args)
      new(*args).call
    end
  end
end
