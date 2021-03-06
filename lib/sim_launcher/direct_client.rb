module SimLauncher
  class DirectClient
    def initialize( app_path, sdk, family )
      @app_path = File.expand_path( app_path )
      @sdk = sdk
      @family = family
    end

    def self.for_ipad_app( app_path, sdk = '4.2' )
      self.new( app_path, sdk, 'ipad' )
    end

    def self.for_iphone_app( app_path, sdk = '4.2' )
      self.new( app_path, sdk, 'iphone' )
    end

    def launch
      SimLauncher::Simulator.new.launch_ios_app( @app_path, @sdk, @family ) 
    end

    def relaunch
      launch
    end
  end
end
