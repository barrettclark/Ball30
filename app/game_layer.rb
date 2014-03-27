class GameLayer < Joybox::Core::Layer
  scene
  MAXIMUM_BALLS = 30

  def on_enter
    redball = Sprite.new file_name: 'redball.png', position: Screen.center
    self << redball
    schedule_update do |dt|
      launch_balls
    end
  end

  def launch_balls
    @balls ||= []
    if @balls.size <= MAXIMUM_BALLS
      number = MAXIMUM_BALLS - @balls.size
      number.times do
        ball = BallSprite.new
        self << ball
        @balls << ball
      end
    end
  end
end
