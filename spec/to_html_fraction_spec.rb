require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "ToHtmlFraction" do
  it "should convert a fractional float to an html fraction" do
    # pending
    0.125.to_html_fraction.should == '&#x215B;'
    0.166.to_html_fraction.should == '&#x2159;'
    0.2.to_html_fraction.should == '&#x2155;'
    0.25.to_html_fraction.should == '&frac14;'
    0.33.to_html_fraction.should == '&#x2153;'
    0.375.to_html_fraction.should == '&#x215C;'
    0.4.to_html_fraction.should == '&#x2156;'
    0.5.to_html_fraction.should == '&frac12;'
    0.6.to_html_fraction.should == '&#x2157;'
    0.625.to_html_fraction.should == '&#x215D;'
    0.66.to_html_fraction.should == '&#x2154;'
    0.75.to_html_fraction.should == '&frac34;'
    0.8.to_html_fraction.should == '&#x2158;'
    0.833.to_html_fraction.should == '&#x215A;'
    0.875.to_html_fraction.should == '&#x215E;'
  end
end
