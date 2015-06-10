require "fileutils"
require "logger"

log = Logger.new "log.txt"

lines = File.readlines "./shares.txt"
shares = lines.map(&:strip).reject{|l| l[0] == "#"}

shares.each do |share|
  files = Dir.glob share
  log.info "Going to delete: #{files}"
  FileUtils.rm files
end
