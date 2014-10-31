class MenstruationCalculator
  Default_cycle_duration = 28

  def self.next(date)
    date + Default_cycle_duration
  end
end
