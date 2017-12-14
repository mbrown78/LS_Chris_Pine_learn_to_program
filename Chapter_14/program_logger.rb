def log(description, &block)
  puts "Beginning..." + description
  puts "Beginning " + description +
  returns = block.call
  puts  "...some little block finished, returning: #{returns}."
  puts "Beginning.... " + description
  returns = block.call
  puts  "...yet another block' finished, returning: #{returns}!"
  puts  "...outer block finished, returning: false"
end


log "outer block...." do
 log "some little block....." do
  "5"
 end
 log "yet another block" do
    "I like Thai Food"
 end
  'false' 
end
