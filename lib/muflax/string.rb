#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
# Copyright muflax <mail@muflax.com>, 2013
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

class String
  alias :starts_with? :start_with?
  alias :ends_with?   :end_with?

  def align str=" ", alignment: :left
    self.split("\n").align(str, alignment: alignment).join("\n")
  end

  def align! str=" ", alignment: :left
    self.replace(self.align(str, aligment: alignment))
  end

end
