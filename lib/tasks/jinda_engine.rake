require 'jinda_engine'
require 'jinda_engine/helpers'
include Jinda_engine::Helpers

@btext= "# jinda begin"
@etext= "# jinda end"

namespace :Jinda_engine do
  desc "generate models from mm"
  task :update=> :environment do
    @app= get_app
    process_models
    process_controllers
    gen_views
  end

  desc "generate admin user"
  task :seed=> :environment do
    unless Identity.where(code:"admin").exists?
      identity= Identity.create :code => "admin", :email => "admin@test.com", :password => "secret",
				:password_confirmation => "secret", :image => "https://user-images.githubusercontent.com/3953832/42472827-50ed8cbc-8388-11e8-8982-fa523c25288f.png"
      User.create :provider => "identity", :uid => identity.id.to_s, :code => identity.code,
				:email => identity.email, :role => "M,A,D", :auth_token => "71JxMH5fxi23zinBoq1uKA", :image => identity.image
    end
  end

  desc "cancel all pending tasks"
  task :cancel=> :environment do
    Jinda_engine::Xmain.update_all "status='X'", "status='I' or status='R'"
  end
end


