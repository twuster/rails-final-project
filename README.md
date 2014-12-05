Title: Travl

Team Members: Erica Yin, Kevin Wu, Tony Wu, Yipin (Casber) Wang

Demo Link: http://travl-rails.herokuapp.com

Description: A web application where users can save their favorite areas using a board and 'pin' their favorite places, effectively crowdsourcing reviews about local spots and planning their vacations.

Models and Description

1. User
  - has name, email, and password

2. Board
  - has title, pins and belongs to a User

3. Pin
  - has name and belongs to a User

Features:
- Users can log in
- Users can make boards
- Users can make pins on boards
- Users can use entire google map interface inside

Division of Labor:
- Erica: Pins, Boards, Maps JS, User Interface, Styling, 
- Kevin: Heroku, Figaro, Maps JS, Home, Styling, Logo, Video
- Tony: Boards, Maps JS
- Casber: Pins, Writeup