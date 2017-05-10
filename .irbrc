% ~/.irbrc

require 'irbtools'

#########################
ANSI_BOLD       = "\033[1m"
ANSI_RESET      = "\033[0m"
ANSI_LGRAY    = "\033[0;37m"
ANSI_GRAY     = "\033[1;30m"
ANSI_BLUE     = "\033[1;33m"
ANSI_RED     = "\033[1;32m"

class Object
  def pm(*options) # Print methods
    methods = self.methods
    methods -= Object.methods unless options.include? :more
    filter = options.select {|opt| opt.kind_of? Regexp}.first
    methods = methods.select {|name| name =~ filter} if filter

IRB.conf[:AUTO_INDENT] = true
IRB.conf[:PROMPT_MODE] = :SIMPLE

# Loaded when we fire up the Rails console
# among other things I put the current environment in the prompt

if ENV['RAILS_ENV']
  rails_env = ENV['RAILS_ENV']
  rails_root = File.basename(Dir.pwd)
  prompt = "#{rails_root}[#{rails_env.sub('production', 'prod').sub('development', 'dev')}]"
  IRB.conf[:PROMPT] ||= {}
  
  IRB.conf[:PROMPT][:RAILS] = {
    :PROMPT_I => "#{prompt}>> ",
    :PROMPT_S => "#{prompt}* ",
    :PROMPT_C => "#{prompt}? ",
    :RETURN   => "=> %s\n" 
  }
  
  IRB.conf[:PROMPT_MODE] = :RAILS

### IRb HELPER METHODS

#clear the screen
def clear
  system('clear')
end
alias :cl :clear

#ruby documentation right on the console
# ie. ri Array#each
def ri(*names)
  system(%{ri #{names.map {|name| name.to_s}.join(" ")}})
end

### CORE EXTENSIONS
class Object
  #methods defined in the parent class of the object
  def local_methods
    (methods - Object.instance_methods).sort
  end
  
  #copy to pasteboard
  #pboard = general | ruler | find | font
  def to_pboard(pboard=:general)
    %x[printf %s "#{self.to_s}" | pbcopy -pboard #{pboard.to_s}]
    paste pboard
  end
  alias :to_pb :to_pboard

  #paste from given pasteboard
  #pboard = general | ruler | find | font
  def paste(pboard=:general)
    %x[pbpaste -pboard #{pboard.to_s}].chomp
  end
  
  def to_find
    self.to_pb :find
  end  

class Class
  public :include
  
  def class_methods
    (methods - Class.instance_methods - Object.methods).sort
  end
  
  #Returns an array of methods defined in the class, class methods and instance methods
  def defined_methods
    methods = {}
    
    methods[:instance] = new.local_methods
    methods[:class] = class_methods
    
    methods
  end

### USEFUL ALIASES
alias q exit
