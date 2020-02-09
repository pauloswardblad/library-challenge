require 'yaml'
require 'date'

class Library

  attr_accessor :index

  STANDARD_RETURN_DATE = 1

  def create_index 
        @index = YAML.load_file('./lib/data.yml')
  end

  def query_title(title)
      index.select { [:title].include? "#{title}" }
  end
  
  def query_author(author)
    index.select { [:author].include? "#{author}" }
  end

  def is_available(available)
    index.select { [:available] }
  end
  
  #def is_available(available)
        #@index.select { |book| book[:available] == true }
        #index.select { [:item][:available].to eq? "true" } #to be_truthy? "#{available}" } 
  #end


  #dependent on checkout

  def return_date
      Date.today.next_month(STANDARD_RETURN_DATE).strftime('%y-%m-%d')
  end
  
 



end

# to see index in irb p @index = YAML.load_file('./lib/data.yml')


#def return_date(return_date)
      #self.index { [book][:item][:return_date] = Date.today.next_month(Library::STANDARD_RETURN_DATE).strftime('%y-%m-%d') }
        #File.open('./lib/data.yml', 'w') { |f| f.write index.to_yaml }  
            #Date.today.next_month (Library::STANDARD_VAILIDITY_DATE).strftime('%m/%y')
#end