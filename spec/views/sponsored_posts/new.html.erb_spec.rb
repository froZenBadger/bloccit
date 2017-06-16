require 'rails_helper'

RSpec.describe "sponsored_posts/new", type: :view do
  before(:each) do
    assign(:sponsored_post, SponsoredPost.new())
  end

  it "renders new sponsored_post form" do
    render

    assert_select "form[action=?][method=?]", sponsored_posts_path, "post" do
    end
  end
end
