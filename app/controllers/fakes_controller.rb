class FakesController < ApplicationController

  before_action :fill_funcs,only: :create

  @fake_functions = {}

  def index
    @fake_helps = Fake.all.map {|fake| fake.about}
    @fake_options = Fake.all.map { |fake| fake.option_fill}
    @fake_urls = []
    Fake.all.each do |i|
      @fake_urls << fake_gen_url(i.id)
    end
end

  def create

  end

  private
    def fill_funcs

    end

end
