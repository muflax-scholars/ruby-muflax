#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
# Copyright muflax <mail@muflax.com>, 2013
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

class Array
  def align str=" ", alignment: :left
    lines = []
    columns = 0

    # split all lines
    self.each do |line|
      line = line.split(str)
      lines << line
      columns = [columns, line.size - 1].max
    end

    just_function = case alignment
                    when :left   ; :ljust
                    when :right  ; :rjust
                    when :center ; :center
                    else
                      raise "invalid alignment: #{alignment}"
                    end

    # justify all columns
    (0..columns).each do |column|
      length = lines.map{|line| line[column]}.length_of_longest

      lines.each do |line|
        elem = line[column]
        unless elem.nil?
          # how much the element is internally longer than it appears
          elem_diff = elem.to_s.length - elem.str_length

          line[column] = elem.send(just_function, length + elem_diff)
        end
      end
    end

    # join lines back together
    lines.map{|line| line.join(str)}
  end

  def align! str=" ", alignment: :left
    self.replace(self.align(str, alignment: alignment))
  end
end
