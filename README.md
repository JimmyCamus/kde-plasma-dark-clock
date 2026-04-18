# Clock Plasmoid

A small KDE Plasma widget that shows the current day, date and time with a stylized layout and custom fonts.

<div align="center">
  <img width="426" height="311" alt="Captura de pantalla_20260418_190445" src="https://github.com/user-attachments/assets/0197e8f5-1623-476b-8eae-e23f7f8ef4b3" />
</div>


## Features

- Real-time clock update every second
- Displays:
  - day of the week
  - full date (`d MMMM yyyy`)
  - time in `hh:mm` format
- Uses custom fonts:
  - `Maytorm-Regular.ttf` for the day name
  - `Javier Skull.ttf` for date and time
- Simple Plasma configuration hooks for:
  - title font size
  - date font size
  - time font size
  - font color

## Usage

1. Install the plasmoid into your Plasma widgets folder.
2. Add it to your desktop or panel as a Plasma widget.
3. The clock updates automatically every second.

## Notes

- The timer updates only once per second, so CPU and memory impact is minimal.
- The day and date labels update automatically as the `currentTime` property changes, so the widget stays in sync with the system clock.
