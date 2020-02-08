class Library
    require 'yaml'  

    attr_accessor :index

    #STANDARD_RETURN_DATE = 30

    def initialize     
        @index = YAML.load_file('./lib/data.yml')
        #@index = nil 
    end

end