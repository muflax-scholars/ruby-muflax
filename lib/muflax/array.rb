#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
# Copyright muflax <mail@muflax.com>, 2013
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

class Array
  def align str=" "
    lines = []
    columns = 1

    # split all lines
    self.each do |line|
      line = line.split(str)
      lines << line
      columns = [columns, line.size].max
    end

    # justify all columns
    (1..columns).each do |column|
      length = lines.select{|line| line[column]}.length_of_longest

      lines.each do |line|
        line[column] = line[column].ljust(length) unless line[column].nil?
      end
    end

    # join lines back together
    lines.map{|line| line.join(str)}

    lines
  end
end
