units = {
  top50 = {x = 0.00, y = 0.00, w = 1.00, h = 0.50},
  bot50 = {x = 0.00, y = 0.50, w = 1.00, h = 0.50},
  left50 = {x = 0.00, y = 0.00, w = 0.50, h = 1.00},
  right50 = {x = 0.50, y = 0.00, w = 0.50, h = 1.00},
  rightTwoThirds = {x = 0.33, y = 0.33, w = 0.66, h = 1.00},
  leftTwoThirds = {x = 0.00, y = 0.33, w = 0.66, h = 1.00},

  firstQuarterTall = {x = 0.00, y = 0.00, w = 0.25, h = 1.00 }, 
  secondQuarterTall = {x = 0.25, y = 0.00, w = 0.25, h = 1.00 }, 
  thirdQuarterTall = {x = 0.50, y = 0.00, w = 0.25, h = 1.00 }, 
  fourthQuarterTall = {x = 0.75, y = 0.00, w = 0.25, h = 1.00 }, 
  
  topLeftQuarter = {x = 0.00, y = 0.00, w = 0.25, h = 0.50 },
  topRightQuarter = {x = 0.75, y = 0.00, w = 0.25, h = 0.50 },
  bottomLeftQuarter = {x = 0.00, y = 0.50, w = 0.25, h = 0.50 },
  bottomRightQuarter = {x = 0.75, y = 0.50, w = 0.25, h = 0.50 },

  center = {x = 0.25, y = 0.00, w = 0.50, h = 1.00 },
  extendCenter = {x = 0.25, y = 0.00, w = 0.75, h = 1.00 },

  maximum = {x = 0.00, y = 0.00, w = 1.00, h = 1.00}
}

function moveWindowNext()
  local this = hs.window.focusedWindow()
  local nextScreen = this:screen():next()
  this:moveToScreen(nextScreen)
end

function resizeWindow(newSize)
  hs.window.focusedWindow():move(newSize, nil, true)
end

mash = {'alt', 'ctrl', 'cmd'}

hs.hotkey.bind(mash, 'm', function() resizeWindow(units.maximum) end)
hs.hotkey.bind(mash, 'n', moveWindowNext)
hs.hotkey.bind(mash, 'Up', function() resizeWindow(units.top50) end)
hs.hotkey.bind(mash, 'Down', function() resizeWindow(units.bot50) end)
hs.hotkey.bind(mash, 'Left', function() resizeWindow(units.left50) end)
hs.hotkey.bind(mash, 'Right', function() resizeWindow(units.right50) end)

hs.hotkey.bind(mash, ']', function() resizeWindow(units.rightTwoThirds) end)
hs.hotkey.bind(mash, '[', function() resizeWindow(units.leftTwoThirds) end)

hs.hotkey.bind(mash, '1', function() resizeWindow(units.firstQuarterTall) end)
hs.hotkey.bind(mash, '2', function() resizeWindow(units.secondQuarterTall) end)
hs.hotkey.bind(mash, '3', function() resizeWindow(units.thirdQuarterTall) end)
hs.hotkey.bind(mash, '4', function() resizeWindow(units.fourthQuarterTall) end)

hs.hotkey.bind(mash, 'u', function() resizeWindow(units.topLeftQuarter) end)
hs.hotkey.bind(mash, 'i', function() resizeWindow(units.center) end)
hs.hotkey.bind(mash, 'o', function() resizeWindow(units.topRightQuarter) end)
hs.hotkey.bind(mash, 'j', function() resizeWindow(units.bottomLeftQuarter) end)
hs.hotkey.bind(mash, 'k', function() resizeWindow(units.extendCenter) end)
hs.hotkey.bind(mash, 'l', function() resizeWindow(units.bottomRightQuarter) end)
