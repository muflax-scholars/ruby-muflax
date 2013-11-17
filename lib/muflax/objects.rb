#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
# Copyright muflax <mail@muflax.com>, 2013
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

# make it possible to track data in attributes
class Class
  alias_method :attr_reader_without_tracking, :attr_reader
  def attr_reader(*names)
    attr_readers.concat(names)
    attr_reader_without_tracking(*names)
  end

  def attr_readers
    @attr_readers ||= [ ]
  end

  alias_method :attr_writer_without_tracking, :attr_writer
  def attr_writer(*names)
    attr_writers.concat(names)
    attr_writer_without_tracking(*names)
  end

  def attr_writers
    @attr_writers ||= [ ]
  end

  alias_method :attr_accessor_without_tracking, :attr_accessor
  def attr_accessor(*names)
    attr_readers.concat(names)
    attr_writers.concat(names)
    attr_accessor_without_tracking(*names)
  end
end

class Object
  def differences_with(other)
    # get list of all attributes
    attrs = (self.class.attr_readers + self.class.attr_writers).uniq.sort

    # pick all attributes that they disagree about
    attrs.reject do |attr|
      self.respond_to? attr and other.respond_to? attr and self.send(attr) == other.send(attr)
    end
  end
end
