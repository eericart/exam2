require 'rails_helper'

RSpec.describe "teachers/new", :type => :view do
  before(:each) do
    assign(:teacher, Teacher.new(
      :name => "MyString",
      :teacher_code => "MyString"
    ))
  end

  it "renders new teacher form" do
    render

    assert_select "form[action=?][method=?]", teachers_path, "post" do

      assert_select "input#teacher_name[name=?]", "teacher[name]"

      assert_select "input#teacher_teacher_code[name=?]", "teacher[teacher_code]"
    end
  end
end
