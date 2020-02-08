require 'yaml'

class Library
<<<<<<< HEAD
<<<<<<< HEAD
    require 'yaml'  

    attr_accessor :index

    #STANDARD_RETURN_DATE = 30

    def initialize     
        @index = YAML.load_file('./lib/data.yml')
        #@index = nil 
    end

end
=======
  require 'yaml'
=======
>>>>>>> afbcd7eebfba172306fb8de8ecc349882dcf63ed

  attr_accessor :index

  #STANDARD_RETURN_DATE = 30

  def initialize
    @index = YAML.load_file('./lib/data.yml')
  end

  def query_title(title)
      index.select { [:item][:title].include? "#{title}" }
  end
  
  def query_author(author)
    index.select { [:item][:author].include? "#{author}" }
  end

  def is_available(available)
    index.select { [:item][:available].eq? "true" }
  end

 # def return_date
  #  Date.today.next_year(Account::STANDARD_VAILIDITY_YRS).strftime('%m/%y')
  #end

end

# to see index in irb p @index = YAML.load_file('./lib/data.yml')



>>>>>>> d5e183041dd7239a44acef56e71b1866342962f3
