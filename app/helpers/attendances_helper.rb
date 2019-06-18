module AttendancesHelper
  
  def current_time
    Time.new(
      Time.now.year,
      Time.now.month,
      Time.now.day,
      Time.now.hour,
      Time.now.min, 0
      )
  end
  
  def working_times(started_at, finished_at)
    format("%.2f", (((finished_at - started_at) / 60) / 60.0)) #計算結果は秒数で返ってくるから秒数を２度６０で割る
  end
end
