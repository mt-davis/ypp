require 'rails_helper'

RSpec.describe "pforms/new", type: :view do
  before(:each) do
    assign(:pform, Pform.new(
      :pFirstName => "MyString",
      :pLastName => "MyString",
      :pPhone => "MyString",
      :pAddress => "MyString",
      :pCity => "MyString",
      :pSatate => "MyString",
      :pZipcode => "MyString"
    ))
  end

  it "renders new pform form" do
    render

    assert_select "form[action=?][method=?]", pforms_path, "post" do

      assert_select "input#pform_pFirstName[name=?]", "pform[pFirstName]"

      assert_select "input#pform_pLastName[name=?]", "pform[pLastName]"

      assert_select "input#pform_pPhone[name=?]", "pform[pPhone]"

      assert_select "input#pform_pAddress[name=?]", "pform[pAddress]"

      assert_select "input#pform_pCity[name=?]", "pform[pCity]"

      assert_select "input#pform_pSatate[name=?]", "pform[pSatate]"

      assert_select "input#pform_pZipcode[name=?]", "pform[pZipcode]"
    end
  end
end
