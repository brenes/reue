class MeasureJob < ApplicationJob
  queue_as :measurements

  def perform(*args)
    Measurement.create(
      measured_at: Time.now,
      temperature:  rand*100,
      pressure:  rand,
      humidity: rand
    )
  end
end
