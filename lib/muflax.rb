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

def require_local_libs path
  Dir["#{File.join(File.dirname(__FILE__), path)}/*.rb"].each do |lib|
    require lib
  end
end


# gem libs
require_local_libs "muflax"
