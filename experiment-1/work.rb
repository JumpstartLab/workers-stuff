require 'resque'
require_relative 'pointless_job'

25.times do |i|
  puts "Scheduling work."
  Resque.enqueue(PointlessJob, i)
end
