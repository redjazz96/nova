

module Nova

  # Classes to handle running commands on platforms.
  module Remote

    if ENV["NOVA_ENV"] == "testing"
      require 'nova/remote/fake'
    else
      autoload :Fake, "nova/remote/fake"
      #autoload :Local, "nova/remote/local"
      #autoload :SSH, "nova/remote/ssh"
    end

  end
end
