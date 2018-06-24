class Application

  def call(env)
    resp = Rack::Response.new

    our_time = Kernel.rand(1..24)

    # resp.write "#{our_time} \n"

    if our_time < 12
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end
end
