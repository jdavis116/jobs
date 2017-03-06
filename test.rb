#!/usr/bin/ruby
require "prawn"

Prawn::Document.generate("hello.pdf") do
  text "Joe Cool", :align => :center, :size => 20
  text "1234 Mean St, Townsville, CA 95926", :align => :center
  pad_bottom(10) {text "530-555-5555 * address@email.com", :align => :center}
  self.line_width = 2
  stroke do
    horizontal_rule
  end
  pad_top(10) {text "Career Goals", :align => :center, :size => 15}
  text "Subtext", :align => :center
  pad(10) {text "Lorem ipsum dolor sit amet, consectetur adipiscing elit," +
  " sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. " +
  "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "+
  "nisi ut aliquip ex ea commodo consequat. ", :align => :left}
  pad_bottom(10) {column_box([0, cursor], :columns => 2, :height => 40, :width => bounds.width) do
    text "Duis aute irure dolor in reprehenderit in voluptate velit esse " +
    "cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat " +
    "cupidatat non proident, sunt in culpa qui officia deserunt mollit " +
    "anim id est laborum."
  end}
  stroke do
    horizontal_rule
  end
  pad(10) {text "Work History", :align => :center, :size => 15}
  text "Mickey Dee's:", :size => 15
  text_box "Server, Glorified Fry Cook, Bus Boy", :at => [50, cursor], :size => 15
  move_down(15)
  text_box "March, 1995 - 2000", :at => [70, cursor]
  move_down(12)
  text_box "Brokendreams BLVD, Chico, CA", :at => [70, cursor]
  move_down(12)
  text "The Old Grist Mill:", :size => 15
  text_box "Miller, Reaper, Sower", :at => [50, cursor], :size => 15
  move_down(15)
  text_box "June 2006 - present", :at => [70, cursor]
  move_down(12)
  text_box "The Middle of the Woods", :at => [70, cursor]
  move_down(22)
  stroke do
    horizontal_rule
  end
  pad(10) {text "Skills", :align => :center, :size => 15}
  text "Slacking off", :size => 15
  text_box "Messing around", :at => [70, cursor]
  move_down(12)
  text_box "Dawdling", :at => [70, cursor]
  move_down(12)
  text "Wasting Time", :size => 15
  text_box "Daydreaming", :at => [70, cursor]
  move_down(12)
  text_box "Procrastinating", :at => [70, cursor]
  move_down(22)
  stroke do
    horizontal_rule
  end
  pad(10) {text "Education", :align => :center, :size => 15}
  text "Clown College", :size => 15
  text_box "Major in Art History", :at => [50, cursor]
  move_down(12)
  text_box "Minor in Herbology", :at => [50, cursor]
  move_down(12)
  text_box "2013 - present", :at => [50, cursor]
  move_down(12)
  text_box "GPA: 7.3", :at => [50, cursor]
  move_down(12)
end
