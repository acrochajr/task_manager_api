class ApiVersionConstraint

    def initialize(options)
      @version = options[:version]
      @defaut = options[:default]
    end

    def matches?(req)
        @default || req.headers['Accept'].include?("application/vnd.taskmanger.v#{@version}")
    end
    


end