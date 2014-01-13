require 'fileutils'
require 'resque'
require_relative 'pointless_job'

FileUtils.mkdir_p('./jobs')

25.times do |i|
  puts "Pushing work to the queue"
  Resque.enqueue(PointlessJob, i)
end

