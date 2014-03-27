class BallSprite < Joybox::Core::Sprite
  def initialize
    # @random = Random.new
    # position = [@random.rand(1..Screen.width), @random.rand(1..Screen.height)]
    position = [Screen.width/2, Screen.height-10]
    file_name = ['blueball.png', 'redball.png'].sample
    super file_name: file_name, position: position
  end
end
