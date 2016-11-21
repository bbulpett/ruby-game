require 'gosu'

class SpaceGameWindow < Gosu::Window
  def initialize
    super(960, 480)
    self.caption = "Space Game"

    @background = Gosu::Image.new("assets/background.png")
    @spaceship = Gosu::Image.load_tiles("assets/green_spaceships_sheet.png", 116, 50)
    @current_spaceship_image = @spaceship[1]
  end

  def draw
    @background.draw(0, 0, 0)
    @current_spaceship_image.draw(50, 240, 1)
  end
end

SpaceGameWindow.new.show
