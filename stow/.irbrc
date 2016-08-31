require "irb/completion"
require "pp"

# Enable autoindent
IRB.conf[:AUTO_INDENT] = true

# Enable history
IRB.conf[:SAVE_HISTORY] = 1000

# Configure prompt
IRB.conf[:USE_READLINE] = true
IRB.conf[:PROMPT_MODE] = :SIMPLE
