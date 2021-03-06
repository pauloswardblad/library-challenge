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

  def checkout_book

  end


  #dependent on checkout

  def return_date
      Date.today.next_month(STANDARD_RETURN_DATE).strftime('%y-%m-%d')
  end
  
 
end
