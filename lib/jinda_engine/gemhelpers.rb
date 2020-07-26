# This GemHelpers is to make helper able to be test in gem (not in rails)
module Jinda_engine	
  module GemHelpers
	  require 'Jinda_engine/helpers'
		include Jinda_engine::Helpers
		require 'pry'
			# Find gem root 
			spec = Gem::Specification.find_by_name("jinda_engine")
			$gem_root = spec.gem_dir

			def controller_exists?(modul)
				File.exists? $gem_root + "/lib/generators/jinda_engine/templates/app/controllers/#{modul}_controller.rb"
			end

			#
			# Mock generate controller for test
			# Otherwise test will call rails g controller
			#
			def process_controllers
				process_services
				modules= jinda_engine::Module.all
				modules.each do |m|
					next if controller_exists?(m.code)
					puts "    Rails generate controller #{m.code}"
				end
			end

			def gen_view_file_exist?(dir)
				gdir = $gem_root + "/spec/temp/" + dir
				File.exists?(gdir)
			end

			def gen_view_mkdir(dir,t)
				gdir = $gem_root + "/spec/temp/" + dir
				Dir.mkdir(gdir)
				t << "create directory #{gdir}"
			end

			def gen_view_createfile(sv,f,t)
				gsv = $gem_root + "/lib/generators/jinda_engine/templates/" + sv
				gf  = $gem_root + "/spec/temp/" + f
				FileUtils.cp gsv,gf
				# FileUtils.cp "app/jinda_engine/template/linkview.haml",f
				t << "create file #{gf}"
			end


	end
end
	
