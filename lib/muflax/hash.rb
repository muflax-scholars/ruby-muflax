#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
# Copyright muflax <mail@muflax.com>, 2013
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

# simple auto-vivifying hash
# TODO support nested hashes
def vivaHash default=[]
  hash = Hash.new do |h, k|
    h[k] = default.duplicable? ? default.dup : default
  end

  hash
end
