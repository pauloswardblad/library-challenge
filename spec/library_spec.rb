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
    expected_output = true
    expect(subject.index[0][:item][:available]).to eq expected_output
  end
  

  #it 'can generate checkout date' do
    
  #end

  it 'can generate return date' do
    return_date = Date.today.next_month(1).strftime('%y-%m-%d')
    expect(subject.return_date).to eq return_date
  end

=begin

  it 'when book checked out availability changes to unavailable' do
    
  end

  it 'when book returned availability changes to available' do
    #kjflakjdf
  end

  it 'when checkout occurs, visitor pinged return date information' do
    
  end
=end

end