#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
# Copyright muflax <mail@muflax.com>, 2014
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

module Kernel
  def hr
    width, height	= HighLine::SystemExtensions.terminal_size
    linewidth    	= [(width || 0) - 1, 1].max

    puts "-" * (linewidth)
  end

  def zsh command
    system "zsh", "-c", command
  end

  def fish command
    system "fish", "-c", command
  end
end
