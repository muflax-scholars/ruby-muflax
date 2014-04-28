#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
# Copyright muflax <mail@muflax.com>, 2014
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

class Dir
  class << self
    alias_method :"_[]", :"[]"

    # make glob sort by default
    def [] *args
      self.send(:"_[]", *args).sort
    end
  end
end
