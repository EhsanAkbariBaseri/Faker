class FakesController < ApplicationController

  @fake_functions = {}
  @gen_info = {}

  MAX_SIZE = 1000

  def about

  end

  def index
    @fake_helps = Fake.all.map {|fake| fake.about}
    @fake_options = Fake.all.map { |fake| fake.option_fill}
    @fake_urls = []
    Fake.all.each do |i|
      @fake_urls << fake_gen_url(i.id)
    end
  end

  def create
    @fake_func = FakeFunction.find(params[:id])
    fill_funcs
    generate
  end

  def generate
    @gen_info = Hash.new
    @fake_functions.each do |k,v|
      @gen_info[k]=eval(v)
    end
  end

  private
    def fill_funcs
      @fake_functions = Hash.new
      the_fake = FakeFunction.find(params[:id])
      the_fake.fake_commands.each do |i|
        @fake_functions[i.name]=i.command
      end
    end

end
