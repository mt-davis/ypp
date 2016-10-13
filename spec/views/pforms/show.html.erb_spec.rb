require 'rails_helper'

RSpec.describe "pforms/show", type: :view do
  before(:each) do
    @pform = assign(:pform, Pform.create!(
      :pFirstName => "P First Name",
      :pLastName => "P Last Name",
      :pPhone => "P Phone",
      :pAddress => "P Address",
      :pCity => "P City",
      :pSatate => "P Satate",
      :pZipcode => "P Zipcode"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/P First Name/)
    expect(rendered).to match(/P Last Name/)
    expect(rendered).to match(/P Phone/)
    expect(rendered).to match(/P Address/)
    expect(rendered).to match(/P City/)
    expect(rendered).to match(/P Satate/)
    expect(rendered).to match(/P Zipcode/)
  end
end
