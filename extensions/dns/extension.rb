#
# Copyright (c) 2006-2025 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#
require 'async/dns'

module BeEF
  module Extension
    module Dns
      extend BeEF::API::Extension

      @short_name = 'dns'
      @full_name = 'DNS Server'
      @description = 'A configurable DNS nameserver for performing DNS spoofing, ' +
                     'hijacking, and other related attacks against hooked browsers.'
    end
  end
end

require 'extensions/dns/api'
require 'extensions/dns/dns'
require 'extensions/dns/logger'
require 'extensions/dns/model'
require 'extensions/dns/rest/dns'
