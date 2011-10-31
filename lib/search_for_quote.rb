# 
# Here is where you will write the method #search_for_quote
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#
def search_for_quote quote_hash
  quotes = all_quotes(quote_hash[:file])
  return quotes if quotes.empty? || quote_hash.size == 1
  
  quotes_with_criteria = quote_hash.reject { |k,v| k == :file }.map do |key, value|
    quotes.select { |quote| quote.send(key.to_s.concat('?'), value) }
  end.flatten
end