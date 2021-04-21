require 'httparty'

module Helpers 

    def delorean
        HTTParty.get('http://automationpractice.com/index.php/helpers?email=julioc.teste@gmail.com')
    end

end