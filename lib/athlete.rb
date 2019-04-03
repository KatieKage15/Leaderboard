class InvalidWorkout < StandardError; end

class Athlete
  attr_accessor :name, :workout, :score

  def initialize
    @workouts = []
  end

  def add_workout(workout)
    if !workout.is_a?(Workout)
      raise InvalidWorkout, "Must be a benchmark workout."
    else
      @workouts << workout
  end

  def first_athlete.url
    self.athlete.first.url #an array, first element must respond to a URL method
  end
end
