require 'rails_helper'

RSpec.describe "teachers/show", :type => :view do
  before(:each) do
    @teacher = assign(:teacher, Teacher.create!(
      :name => "Name",
      :teacher_code => "Teacher Code"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Teacher Code/)
  end
end
