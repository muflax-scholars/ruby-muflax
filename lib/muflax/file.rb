#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
# Copyright muflax <mail@muflax.com>, 2013
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

class File
  def self.save name, as: :text, &blk
    name = File.expand_path(name)

    # make sure directory exists
    dir = File.dirname(name)
    FileUtils.mkdir_p dir if not Dir.exists? dir

    # now open it
    case as
    when :anki
      f = CSV.open(name, "w", :col_sep => "\t", &blk)
    when :text
      f = File.open(name, "w", &blk)
    else
      raise "unsupported file format: #{as}"
    end

    f
  end

  def self.load name
    name = File.expand_path(name)

    file = case name
           when /\.gz$/
             Zlib::GzipReader.open(name)
           else
             File.open(name)
           end

    file
  end
end
