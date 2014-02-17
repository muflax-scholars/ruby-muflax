#!/usr/bin/env ruby
# coding: utf-8
# Copyright muflax <mail@muflax.com>, 2013
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

# ruby libs
require "csv"
require "date"
require "fileutils"
require "set"

# external libs
require "awesome_print"
require "chronic"
require 'debug_inspector'
require "highline/import"
require "pry"
require "range_math"
require "trollop"

# rails
require 'active_support'
require 'active_support/all'

# avoid rails deprecation warning
I18n.enforce_available_locales = false

def require_local_libs path, location=__FILE__
  Dir["#{File.join(File.dirname(location), path)}/*.rb"].each do |lib|
    require lib
  end
end

# gem libs
require_local_libs "muflax"
