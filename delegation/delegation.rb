require 'forwardable'
class Computer
  extend Forwardable

  def_delegators :cpu, :speed
  def_delegators :ram, :memory
  def_delegators :hard_drive, :disk_space

  attr_accessor :cpu, :ram, :hard_drive
end

class CPU
  attr_accessor :speed
end

class RAM
  attr_accessor :memory
end

class HardDrive
  attr_accessor :disk_space
end

cpu = CPU.new
cpu.speed = "2.9GHz"

ram = RAM.new
ram.memory = "8GB"

hard_drive = HardDrive.new
hard_drive.disk_space = "1TB"

imac = Computer.new
imac.cpu, imac.ram, imac.hard_drive = cpu, ram, hard_drive
puts imac.speed
puts imac.memory
puts imac.disk_space
