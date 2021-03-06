class Measurement < ApplicationRecord

  def self.create_from_sensor
    bme280 = I2C::Driver::BME280.new(device: 1)
    Measurement.create(
      measured_at: Time.now,
      temperature:  bme280.temperature,
      pressure:  bme280.pressure,
      humidity: bme280.humidity
    )
  end
end
