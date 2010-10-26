require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "ToHtmlFraction" do
  it "should convert a float to an html fraction" do
    # pending
    0.0625.to_html_fraction.should == ' 1/16'
    0.125.to_html_fraction.should == '&#x215B;'
    0.1875.to_html_fraction.should == ' 3/16'
    0.25.to_html_fraction.should == '&frac14;'
    0.3125.to_html_fraction.should == ' 5/16'
    0.375.to_html_fraction.should == '&#x215C;'
    0.4375.to_html_fraction.should == ' 7/16'
    0.5.to_html_fraction.should == '&frac12;'
    0.5625.to_html_fraction.should == ' 9/16'
    0.625.to_html_fraction.should == '&#x215D;'
    0.6875.to_html_fraction.should == ' 11/16'
    0.75.to_html_fraction.should == '&frac34;'
    0.8125.to_html_fraction.should == ' 13/16'
    0.875.to_html_fraction.should == '&#x215E;'
    0.9375.to_html_fraction.should == ' 15/16'

  end
  
  it "should round uncommon decimals to the nearest 1/16th" do
    0.166.to_html_fraction.should == ' 3/16'
    0.3.to_html_fraction.should == ' 5/16'
    0.503.to_html_fraction.should == '&frac12;'
    0.68.to_html_fraction.should == ' 11/16'
    0.975.to_html_fraction.should == ''
  end
end