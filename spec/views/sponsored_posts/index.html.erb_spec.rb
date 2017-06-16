require 'rails_helper'

RSpec.describe "sponsored_posts/index", type: :view do
  before(:each) do
    assign(:sponsored_posts, [
      SponsoredPost.create!(),
      SponsoredPost.create!()
    ])
  end

  it "renders a list of sponsored_posts" do
    render
  end
end
