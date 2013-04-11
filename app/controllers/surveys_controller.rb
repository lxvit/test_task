require 'nokogiri'
require 'open-uri'

class SurveysController < ApplicationController

  def create
    @survey = Survey.create(params[:survey])
    prepare_prize if @survey.valid?
  end

  private

  def prepare_prize
    doc = Nokogiri::HTML(open("http://www.gifbin.com./random"))
    @image_url = doc.at_css("#gif")[:src] rescue "http://gifs.gifbin.com/042009/1240478759_elevator.gif"
  end

end