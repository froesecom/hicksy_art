class StaticController < ApplicationController
  def index
    @paintings = Painting.limit(3)
  end
end
