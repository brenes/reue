class MeasureJob < ApplicationJob
  queue_as :measurements

  def perform(*args)
    if Rails.env.production?
      bme280 = I2C::Driver::BME280.new(device: 1)
      Measurement.create(
        measured_at: Time.now,
        temperature:  bme280.temperature,
        pressure:  bme280.pressure,
        humidity: bme280.humidity
      )
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
