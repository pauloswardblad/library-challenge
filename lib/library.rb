require 'yaml'

class Library
#<<<<<<< HEAD

  attr_accessor :index

  

  #STANDARD_RETURN_DATE = 30

  def initialize
        @index = YAML.load_file('./lib/data.yml')
  end

  def query_title(title)
        @index.select { [:item][:title].include? "#{title}" }
  end
  
  def query_author(author)
        @index.select { [:item][:author].include? "#{author}" }
  end

  def is_available(available)
        @index.select { |book| book[:available] == true }
        #index.select { [:item][:available].to eq? "true" } #to be_truthy? "#{available}" } 
  end

  #def checkout_date()
        #empty
  #end

  #def return_date(return_date)
        #Date.today.next_month (Library::STANDARD_VAILIDITY_DATE).strftime('%m/%y')
  #end



end

# to see index in irb p @index = YAML.load_file('./lib/data.yml')


#>>>>>>> d5e183041dd7239a44acef56e71b1866342962f3
