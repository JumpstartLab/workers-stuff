class PointlessJob
  @queue = 'test'

  def self.perform(i)
    filename = "./jobs/#{i}.txt"
    puts "Processing job. See #{filename}"
    sleep rand(1..5)
    File.open(filename, 'w') do |f|
      f.write "Doing work... it is now #{Time.now}."
    end
  end
end

