#!/usr/bin/env ruby
# coding: utf-8
# Copyright muflax <mail@muflax.com>, 2013
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

require "awesome_print"
require "date"
require "pry"
require "range_math"
require "set"

# muflax libs
Dir["#{File.join(File.dirname(__FILE__), "muflax")}/*.rb"].each do |lib|
  require lib
end
