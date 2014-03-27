class BallSprite < Joybox::Core::Sprite
  MAXIMUM_SIZE = 96.0

  def initialize
    @random = Random.new
    position = [@random.rand(1..Screen.width), Screen.height + MAXIMUM_SIZE]
    file_name = ['blueball.png', 'redball.png'].sample
    super file_name: file_name, position: Screen.center
  end
end
