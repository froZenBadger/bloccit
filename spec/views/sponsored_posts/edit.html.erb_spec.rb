require 'rails_helper'

RSpec.describe "sponsored_posts/edit", type: :view do
  before(:each) do
    @sponsored_post = assign(:sponsored_post, SponsoredPost.create!())
  end

  it "renders the edit sponsored_post form" do
    render

    assert_select "form[action=?][method=?]", sponsored_post_path(@sponsored_post), "post" do
    end
  end
end
