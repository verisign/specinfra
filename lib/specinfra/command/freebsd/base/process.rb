class Specinfra::Command::Freebsd::Base::Process < Specinfra::Command::Base::Process
  class << self
    def get(process, opts)
      "ps -ax -c -o command,#{opts[:format]} | grep -w -- #{escape(process)} | grep -v grep | head -1 | awk '{print $2}'"
    end
  end
end
