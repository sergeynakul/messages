require "rails_helper"

RSpec.describe Message, :type => :model do
  it { should serialize(:body) }

  it "destroy after the first link visit" do
    message = Message.create(body: "first message", destruction: true)
    message.visited = true
    expect{ message.destroy_after_visit }.to change(Message, :count).by(-1)
  end
end