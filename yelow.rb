use_bpm 136
use_synth :piano

x=0.25
live_loop:yellow do
  live_loop:background_notes do
    3.times do
      play:E3, amp: x
      sleep 1
      play:B3, amp: x
      play:E4, amp: x
      sleep 1
      play:B3, amp: x
      sleep 1
      play:E4, amp: x
      sleep 1
      x=x+0.25
    end
    
    5.times do
      play:E3, amp: 1
      sleep 1
      play:B3, amp: 1
      play:E4, amp: 1
      sleep 1
      play:B3, amp: 1
      sleep 1
      play:E4, amp: 1
      sleep 1
    end
    stop
  end
  
  define :measure2 do
    play:E4
    sleep 1
    play:E5
    play:Gs4
    sleep 2
    play:E5
    play:Gs4
    sleep 1
  end
  
  define :measure3 do
    play :r
    sleep 1
    play:E5
    play:Gs4
    play:B4
    sleep 1
    play:B4
    sleep 1
    play:E5
    play:Gs4
    sleep 1
  end
  
  define :measure5 do
    play:B4
    sleep 0.75
    play:As4
    sleep 0.25
    play:Gs4
    play:B4
    sleep 0.75
    play:Cs5
    sleep 0.25
    play:B4
    sleep 1
    play:Gs4
    play:E5
    sleep 1
  end
  
  
  # Measure 1
  play :r
  sleep 1
  play:E4
  play:Gs4
  sleep 2
  play:E5
  play:Gs4
  sleep 1
  measure2
  2.times do
    measure3
  end
  measure5
  measure3
  measure5
  measure2
end