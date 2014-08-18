require 'spec_helper.rb'
RSpec.describe Player do
  	subject {Player.new}
  	describe "#raise" do
  		subject {Player.new}
  		subject.stay 5, 0
  		describe "@money" do
  			it "should == 995" do
  				expect(subject.money).to eq 995
  			end
  		end
  	end
  end
