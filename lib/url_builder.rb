

# 
# Here is where you will write the #url_builder method that are defined in the 
# associated specifications file.
# 
# For more information about methods and their parameters I encourage you to 
# read some of the following:
# 
# @see http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
# @see Programing Ruby, Chapter 6 
#
def url_builder url, parameters = {}
  built_url = url + '?'
  
  return built_url + 'results=10' if parameters.empty?
  built_url + parameters.reject { |k,v| v.nil? }.map do |pair|
    pair.join('=')
  end.join('&')
end