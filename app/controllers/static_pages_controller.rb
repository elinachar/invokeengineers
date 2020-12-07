class StaticPagesController < ApplicationController
  def index
    @infos = Info.first
  end
end
