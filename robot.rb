#!/usr/bin/env ruby

class Robot
  attr_accessor :current_location

  def initialize
    @current_location = nil
  end

  def report_current_location
    if @current_location
      [@current_location.x_position, @current_location.y_position, @current_location.direction].join(',')
    else 
      'robot is not placed correctly'
    end
  end
end
