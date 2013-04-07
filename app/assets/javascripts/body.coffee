jQuery ->
  window.timer_interval = setInterval(timer, 100)

timer = ->
  current_ms = $('.timer_box .ms').text()
  current_seconds = $('.seconds').text()

  if current_ms > 0
    next_tick = current_ms - 1
  else if current_seconds != 0
    next_tick = 9
    $('.seconds').text(current_seconds - 1)
    
  $('.timer_box .ms').text(next_tick)

  if current_seconds*1 == 0 and next_tick == 0
    clearInterval(timer_interval)
    alert('Your time has run out!')
  