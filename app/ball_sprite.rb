class BallSprite < Joybox::Core::Sprite
  def initialize
    random    = Random.new
    offset    = random.rand(1..10) * [-1, 1].sample
    position  = [Screen.width/2+offset, Screen.height-25]
    file_name = ['blueball.png', 'redball.png'].sample
    super file_name: file_name, position: position
  end

  def touched?(touch_location)
    rect = CGRect.new(boundingBox.origin, boundingBox.size)
    CGRectContainsPoint(rect, touch_location)
  end
end
