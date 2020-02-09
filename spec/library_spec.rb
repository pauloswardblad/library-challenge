require './lib/library.rb'
require 'yaml'

describe Library do

  it 'has a list of books' do
        expect(subject.index).not_to eq nil
  end

  it 'can search book list by title' do
        expect(subject.index[1][:item][:title]).to include("Skratta la")
  end


  it 'can search book list by author' do
        expect(subject.index[2][:item][:author]).to include("Gunilla")
  end


  it 'can check if the book is available' do
        expected_output = YAML.load_file('./lib/data.yml').select { |book| book[:available] == true }
        expect(subject.index).to eq expected_output
        #expect(subject.index[2][:item][:available]).to eq ("true") #be_truthy
  end
  
  
  #it 'can generate checkout date' do
    
  #end

  #it 'can generate return date' do
        #expected_output = YAML.load_file('./lib/data.yml').select { |returnbook| item[:return_date] == return_date }
        #expect(subject.index).to eq expected_output
  #end
=begin
  it 'when book checked out availability changes to unavailable' do
    
  end

  it 'when book returned availability changes to available' do
    
  end

  it 'when checkout occurs, visitor pinged return date information' do
    
  end
=end
end