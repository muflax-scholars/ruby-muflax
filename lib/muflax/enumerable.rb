#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
# Copyright muflax <mail@muflax.com>, 2013
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

module Enumerable
  # find shortest element
  def shortest
    self.min_by{|s| s.str_length}
  end

  # find longest element
  def longest
    self.max_by{|s| s.str_length}
  end

  def length_of_longest
    self.longest.str_length
  end

  def length_of_shortest
    self.shortest.str_length
  end

  def average
    self.sum.to_f / self.size.to_f
  end
  alias :mean :average
  alias :avg  :average

  def geometric_mean
    self.reduce(:*).to_f ** (1.0 / self.size.to_f)
  end

  def median
    self.percentile 0.5
  end

  def median_by &block
    self.percentile_by 0.5, &block
  end

  def percentile percent
    self.sort[(self.size * percent).round]
  end

  def percentile_by percent, &block
    self.sort_by(&block)[(self.size * percent).round]
  end
end
