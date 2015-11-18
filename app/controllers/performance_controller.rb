class PerformanceController < ApplicationController
  http_basic_authenticate_with name: "perf", password: "speedracer"

  def index
    @perf = current_user.performance
  end
end
