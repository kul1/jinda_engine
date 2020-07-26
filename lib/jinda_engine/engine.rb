module Jinda_engine
  class Engine < ::Rails::Engine
    mattr_accessor :author_class
    isolate_namespace Jinda_engine
  end
end
