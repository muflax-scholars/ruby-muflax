#!/usr/bin/env ruby
# -*- encoding: utf-8 -*-
# Copyright muflax <mail@muflax.com>, 2013
# License: GNU GPL 3 <http://www.gnu.org/copyleft/gpl.html>

def require_local lib_name
  file = File.symlink?(__FILE__) ? File.readlink(__FILE__) : __FILE__
  lib = File.join File.dirname(file), "/../lib/#{lib_name}"

  if File.exists? lib
    # using local version
    require lib
  else
    require lib_name
  end
end
