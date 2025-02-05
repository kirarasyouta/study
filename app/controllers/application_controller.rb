class ApplicationController < ActionController::Base
    

    begin
        @@message
    rescue
        @@message = ""
    end

    begin
        @@message2
    rescue
        @@message2 = ""
    end

end
