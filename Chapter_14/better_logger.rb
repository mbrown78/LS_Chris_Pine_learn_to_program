# Program Logger

$nesting_depth = 0
def log(description, &block)
  space = "  " * $nesting_depth
  puts space + "Starting " + description + "...."
  $nesting_depth = $nesting_depth + 1
  returns = block.call
  $nesting_depth = $nesting_depth - 1
  puts space + " ok done #{returns}"
end

log "outer block" do
  log "2nd layer block" do
    log "3rd layer " do
      log "4th layer" do
      "this is the smallest block"
      end
    "this is the 3rd block"
    end
  "this is the 2nd block"
  end  
end   



