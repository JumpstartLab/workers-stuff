class TimeJob
  @queue = 'test'

  def self.perform(i)
    filename = File.join('.', 'times', i.to_s) << '.txt'
    puts "Performing time work. See #{filename}"
    sleep rand(1..5)
    File.open(filename, 'w') do |f|
      f.write "It is now #{Time.now}"
    end
  end
end
