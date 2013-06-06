class HomeController < ApplicationController
  def index
    @persons = Person.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @persons }
    end
  end

end
