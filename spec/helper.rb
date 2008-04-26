# require 'redgreen'
require File.join(File.dirname(__FILE__), *%w[vendor bacon-0.9.0 lib bacon])
require File.join(File.dirname(__FILE__), *%w[.. lib github_hook])
require File.join(File.dirname(__FILE__), *%w[payload])
Bacon.summary_on_exit
