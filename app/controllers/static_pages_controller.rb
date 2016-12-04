class StaticPagesController < ApplicationController
  def index
    @qutes = []
    @lead = Lead.new
  end
  
  def mission
  end
  
  def service
  end
  
  def thank_you
  end
end
