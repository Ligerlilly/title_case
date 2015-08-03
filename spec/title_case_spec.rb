require('rspec')
require('title_case')

describe String do
  it 'returns a capitilized string' do
    expect('hi'.title_case).to eq('Hi')
  end

  it 'capitilizes all words in a multi-word string, except "of"' do
    expect('first day of class'.title_case)
      .to eq('First Day of Class')
  end

  it 'only capitilizes prepositions if there at the beggining of the string' do
    expect('of the first day of class'.title_case)
      .to eq('Of the First Day of Class')
  end

  it 'if first word is a number and 2nd word is a prepositions, still capitalize preposition' do
    expect('2 of the first day of class'.title_case)
      .to eq('2 Of the First Day of Class')
  end
end
