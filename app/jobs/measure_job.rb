class MeasureJob < ApplicationJob
  queue_as :measurements

  def perform(*args)
    if Rails.env.production?
      Measurement.create_from_sensor
    else
      Measurement.create(
        measured_at: Time.now,
        temperature:  rand*100,
        pressure:  rand,
        humidity: rand
      )
    end
  end
end
