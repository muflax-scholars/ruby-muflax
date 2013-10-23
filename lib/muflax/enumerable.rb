#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
# Copyright muflax <mail@muflax.com>, 2013
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

module Enumerable
  # find shortest element
  def shortest
    self.min_by{|s| s.to_s.length}
  end

  # find longest element
  def longest
    self.max_by{|s| s.to_s.length}
  end

  def length_of_longest
    self.longest.to_s.length
  end

  def length_of_shortest
    self.shortest.to_s.length
  end
end
