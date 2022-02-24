require 'pry'
require './employee'
class Instructor < Employee
  attr_reader :classes_taught
  def initialize(input_hash, classes_taught)
    super(input_hash)
    @classes_taught = classes_taught
  end

  def add_class(class_name)
    @classes_taught << class_name
  end

  def full_time?
    @full_time = true if @classes_taught.count >= 3
  end

  def benefits
    if full_time?
      @benefits = super
      @benefits[:vacation_days] += 5

    end
  end




end
