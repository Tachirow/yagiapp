class YonezawaLesson1Controller < ApplicationController
  def index
    @v = 1
    @kashi = ""
  end

  def show
  end

  def calc_f
    @seshi = params[:seshi]
    @kashi = ""
    @result_f = (@seshi.to_i * 1.8) + 32
    @result_c = ""
    render :index
  end

  def calc_c
    @seshi = ""
    @kashi = params[:kashi]
    @result_f = ""
    @result_c = (@kashi.to_i - 32) / 1.8
    render :index
  end
end
