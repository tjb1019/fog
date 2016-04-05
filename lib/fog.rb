# necessary when requiring fog without rubygems while also
# maintaining ruby 1.8.7 support (can't use require_relative)
__LIB_DIR__ = File.expand_path(File.dirname(__FILE__))
$LOAD_PATH.unshift __LIB_DIR__ unless $LOAD_PATH.include?(__LIB_DIR__)

require 'fog/version'

# Use core
require 'fog/core'

# Previously treated as "core"
# data exchange specific (to be extracted and used on a per provider basis)
require 'fog/xml'
require 'fog/json'

# deprecation wrappers (XML wrapped version)
require 'fog/core/deprecated/connection'
require 'fog/core/deprecated_connection_accessors'

# any one of these can be required separately.
# they all depend on fog/core for shared functionality.
require_relative 'fog/oneandone'