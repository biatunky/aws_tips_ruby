#!/usr/bin/ruby
require 'rubygems'
require 'aws-sdk'
ec2 = AWS::EC2.new(
  :ec2_endpoint => 'ec2.us-west-2.amazonaws.com',
  :access_key_id => 'xxxxxxxxxxxx',
  :secret_access_key => 'xxxxxxxx'
)

ami = ec2.images.with_owner('self')
ami.to_a
puts "description,image_id,kernel_id,location,name,state"
ami.each{ |a|
 puts "#{a.description},#{a.image_id},#{a.kernel_id},#{a.location},#{a.name},#{a.state}"
}
