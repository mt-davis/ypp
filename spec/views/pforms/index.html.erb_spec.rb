require 'rails_helper'

RSpec.describe "pforms/index", type: :view do
  before(:each) do
    assign(:pforms, [
      Pform.create!(
        :pFirstName => "P First Name",
        :pLastName => "P Last Name",
        :pPhone => "P Phone",
        :pAddress => "P Address",
        :pCity => "P City",
        :pSatate => "P Satate",
        :pZipcode => "P Zipcode"
      ),
      Pform.create!(
        :pFirstName => "P First Name",
        :pLastName => "P Last Name",
        :pPhone => "P Phone",
        :pAddress => "P Address",
        :pCity => "P City",
        :pSatate => "P Satate",
        :pZipcode => "P Zipcode"
      )
    ])
  end

  it "renders a list of pforms" do
    render
    assert_select "tr>td", :text => "P First Name".to_s, :count => 2
    assert_select "tr>td", :text => "P Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "P Phone".to_s, :count => 2
    assert_select "tr>td", :text => "P Address".to_s, :count => 2
    assert_select "tr>td", :text => "P City".to_s, :count => 2
    assert_select "tr>td", :text => "P Satate".to_s, :count => 2
    assert_select "tr>td", :text => "P Zipcode".to_s, :count => 2
  end
end
