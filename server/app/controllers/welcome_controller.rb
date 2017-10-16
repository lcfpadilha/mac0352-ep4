class WelcomeController < ApplicationController
  def index

  end

  def run_exploit
    ip = params[:ip]

    fork { exec 'python2 lib/exploit.py ' + ip + ' 80 150' }

    respond_to do |format|
      format.html
    end
  end
end
