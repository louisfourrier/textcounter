class HomesController < ApplicationController
  def main
    
  end
  
  def htmlparser
    
  end
  
  def urlanalyse
    require 'open-uri'
    url = params[:website_url]
    @url_html = open(url.to_s) {|f| f.read }
    respond_to do |format|
      format.js
    end
  end
  
end
