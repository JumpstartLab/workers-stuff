require 'fileutils'
require 'resque'
require_relative './time_job'

FileUtils.mkdir_p './times'

25.times do |i|
  puts "Enqueuing time job..."
  Resque.enqueue(TimeJob, i)
end
