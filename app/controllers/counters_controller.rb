class CountersController < ApplicationController
  def index
    @counters = Counter.all
  end

  def get_count
    counter = Counter.get_count
    @value = counter.last_known_count.to_s
    respond_to do |format|
      format.js
    end
  end
end
