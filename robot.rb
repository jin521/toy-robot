#!/usr/bin/env ruby

class Robot
  attr_accessor :x_position, :y_position, :direction

  def initialize
    @current_location = nil
  end

  def report_current_location
    [@current_location.x_position, @current_location.y_position, @current_location.direction].join(',')
  end
end
