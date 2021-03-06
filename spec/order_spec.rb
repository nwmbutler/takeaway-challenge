require 'order'

describe Order do

  let(:withorder) { Orders.new.input_order("soup") }

  it "stores an order" do
    expect(subject).to respond_to(:sum_cost).with(1).arguments
  end

  it "returns the customer order cost" do
    subject.sum_cost("soup")
    expect { subject.summary }.to output("you've ordered soup x 1, your meal will cost £4\n").to_stdout
  end
end
