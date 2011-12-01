require 'minitest/autorun'

describe 'rdate' do
  it "should output date -v1d -v+1m -v-1d -v-fri" do

    date_output = `date -v1d -v+1m -v-1d -v-fri`
    rdate_output = `./rdate.rb -v1d -v+1m -v-1d -v-fri`

    rdate_output.must_equal date_output
  end
  it "should output date -v1d -v3m -v0y -v-1d" do 
    date_output = `date -v1d -v3m -v0y -v-1d`
    rdate_output = `./rdate.rb -v1d -v3m -v0y -v-1d`

    rdate_output.must_equal date_output
  end
  it "should render date -v1m -v+1y" do
    date_output = `date -v1m -v+1y`
    rdate_output = `./rdate.rb -v1m -v+1y`
    fail "\nexpected #{date_output}\ngot #{rdate_output}" unless rdate_output == date_output
  end
end
