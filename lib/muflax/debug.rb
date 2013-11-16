#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
# Copyright muflax <mail@muflax.com>, 2013
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

# This is very stupid and shouldn't be used in real code, which is why I will use it in real code.

require 'debug_inspector'

def bp
  RubyVM::DebugInspector.open do |inspector|
    eval("binding.pry", inspector.frame_binding(2))
  end
end

def bpe
  RubyVM::DebugInspector.open do |inspector|
    eval("binding.pry; exit", inspector.frame_binding(2))
  end
end
