require 'rails_helper'

RSpec.describe "sponsored_posts/show", type: :view do
  before(:each) do
    @sponsored_post = assign(:sponsored_post, SponsoredPost.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
