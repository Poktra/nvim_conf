---@meta

---
---Manages events, like keypresses.
---
---
---[Open in Browser](https://love2d.org/wiki/love.event)
---
---@class love.event
love.event = {}

---
---Clears the event queue.
---
---
---[Open in Browser](https://love2d.org/wiki/love.event.clear)
---
function love.event.clear() end

---
---Returns an iterator for messages in the event queue.
---
---
---[Open in Browser](https://love2d.org/wiki/love.event.poll)
---
---@return function i # Iterator function usable in a for loop.
function love.event.poll() end

---
---Pump events into the event queue.
---
---This is a low-level function, and is usually not called by the user, but by love.run.
---
---Note that this does need to be called for any OS to think you're still running,
---
---and if you want to handle OS-generated events at all (think callbacks).
---
---
---[Open in Browser](https://love2d.org/wiki/love.event.pump)
---
function love.event.pump() end

---
---Adds an event to the event queue.
---
---From 0.10.0 onwards, you may pass an arbitrary amount of arguments with this function, though the default callbacks don't ever use more than six.
---
---
---[Open in Browser](https://love2d.org/wiki/love.event.push)
---
---@param n love.Event # The name of the event.
---@param a? any # First event argument.
---@param b? any # Second event argument.
---@param c? any # Third event argument.
---@param d? any # Fourth event argument.
---@param e? any # Fifth event argument.
---@param f? any # Sixth event argument.
---@vararg any # Further event arguments may follow.
function love.event.push(n, a, b, c, d, e, f, ...) end

---
---Adds the quit event to the queue.
---
---The quit event is a signal for the event handler to close LÖVE. It's possible to abort the exit process with the love.quit callback.
---
---
---[Open in Browser](https://love2d.org/wiki/love.event.quit)
---
---@overload fun(restart: string|'restart')
---@param exitstatus? number # The program exit status to use when closing the application.
function love.event.quit(exitstatus) end

---
---Like love.event.poll(), but blocks until there is an event in the queue.
---
---
---[Open in Browser](https://love2d.org/wiki/love.event.wait)
---
---@return love.Event n # The name of event.
---@return any a # First event argument.
---@return any b # Second event argument.
---@return any c # Third event argument.
---@return any d # Fourth event argument.
---@return any e # Fifth event argument.
---@return any f # Sixth event argument.
function love.event.wait() end

---
---Arguments to love.event.push() and the like.
---
---Since 0.8.0, event names are no longer abbreviated.
---
---
---[Open in Browser](https://love2d.org/wiki/Event)
---
---@alias love.Event
---
---Window focus gained or lost
---
---| "focus"
---
---Joystick pressed
---
---| "joystickpressed"
---
---Joystick released
---
---| "joystickreleased"
---
---Key pressed
---
---| "keypressed"
---
---Key released
---
---| "keyreleased"
---
---Mouse pressed
---
---| "mousepressed"
---
---Mouse released
---
---| "mousereleased"
---
---Quit
---
---| "quit"
---
---Window size changed by the user
---
---| "resize"
---
---Window is minimized or un-minimized by the user
---
---| "visible"
---
---Window mouse focus gained or lost
---
---| "mousefocus"
---
---A Lua error has occurred in a thread
---
---| "threaderror"
---
---Joystick connected
---
---| "joystickadded"
---
---Joystick disconnected
---
---| "joystickremoved"
---
---Joystick axis motion
---
---| "joystickaxis"
---
---Joystick hat pressed
---
---| "joystickhat"
---
---Joystick's virtual gamepad button pressed
---
---| "gamepadpressed"
---
---Joystick's virtual gamepad button released
---
---| "gamepadreleased"
---
---Joystick's virtual gamepad axis moved
---
---| "gamepadaxis"
---
---User entered text
---
---| "textinput"
---
---Mouse position changed
---
---| "mousemoved"
---
---Running out of memory on mobile devices system
---
---| "lowmemory"
---
---Candidate text for an IME changed
---
---| "textedited"
---
---Mouse wheel moved
---
---| "wheelmoved"
---
---Touch screen touched
---
---| "touchpressed"
---
---Touch screen stop touching
---
---| "touchreleased"
---
---Touch press moved inside touch screen
---
---| "touchmoved"
---
---Directory is dragged and dropped onto the window
---
---| "directorydropped"
---
---File is dragged and dropped onto the window.
---
---| "filedropped"
---
---Joystick pressed
---
---| "jp"
---
---Joystick released
---
---| "jr"
---
---Key pressed
---
---| "kp"
---
---Key released
---
---| "kr"
---
---Mouse pressed
---
---| "mp"
---
---Mouse released
---
---| "mr"
---
---Quit
---
---| "q"
---
---Window focus gained or lost
---
---| "f"
