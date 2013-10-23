#!/usr/bin/env ruby
# coding: utf-8
# Copyright muflax <mail@muflax.com>, 2013
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

# ruby libs
require "date"
require "set"

# external libs
require "awesome_print"
require "highline/import"
require "pry"
require "range_math"

# rails
require 'active_support'
require 'active_support/all'

# gem libs
Dir["#{File.join(File.dirname(__FILE__), "muflax")}/*.rb"].each do |lib|
  require lib
end
