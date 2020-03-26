$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
row_index = 0
while row_index < director_data[:movies].length do
  total += director_data[:movies][row_index][:worldwide_gross]
  row_index += 1 
  end
total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
 directors_total = {}
  
  pp nds
  
  row_index = 0
  
 while row_index < nds.count do
  inner_index = 0
   directors_name = nds[row_index][:name]
   directors_total[directors_name] = 0
   
   while inner_index < nds[row_index][:movies].count do 
     #binding.pry
     
     directors_total[directors_name] += nds[row_index][:movies][inner_index][:worldwide_gross]
  
     inner_index += 1
   end
   row_index += 1
   
 end
 
 directors_total
  
end

