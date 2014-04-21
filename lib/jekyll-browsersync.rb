
module Jekyll
  module Commands
    class Serve
      def self.process(options)
        Jekyll.logger.info 'Starting browser-sync...'

        p options
        args = %w(start --server --files=**/*)

        pid = Process.spawn('browser-sync', *args, :new_pgroup => true, :chdir => options['destination'])

        if options['detach'] # detach the server
          Process.detach pid
          Jekyll.logger.info "Server detached with pid '#{pid}'.", "Run `kill -9 #{pid}' to stop the server."
        else
          t = Thread.new { Process.wait pid }
          trap('INT') do
            Process.kill(:SIGINT, pid)
            t.terminate
          end
          t.join()
        end
      end
    end
  end
end
