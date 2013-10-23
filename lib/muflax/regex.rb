#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
# Copyright muflax <mail@muflax.com>, 2013
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

class String
  def mgsub replacements={}
    str = self.dup

    str.mgsub! replacements

    str
  end
  alias :gsub_all :mgsub
  
  def mgsub! replacements={}
    replacements.each do |a, b|
      self.gsub! a, b
    end

    self
  end
  alias :gsub_all! :mgsub!
end

