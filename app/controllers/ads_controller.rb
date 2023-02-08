class AdsController < ApplicationController
  def show
    render plain: File.read(Rails.root.join('public', 'ads.txt'))
  end
end
