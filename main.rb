require 'gosu'

class SpaceGameWindow < Gosu::Window
  def initialize
    super(960, 480)
    self.caption = "Space Game"

    @spaceship = Gosu::Image.new("assets/spaceship.png")
    @background = Gosu::Image.new("assets/background.png")
  end

  def draw
    @background.draw(0, 0, 0)
    @spaceship.draw(50, 348, 1)
  end
end

SpaceGameWindow.new.show
