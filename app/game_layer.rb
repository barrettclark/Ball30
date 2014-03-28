class GameLayer < Joybox::Core::Layer
  scene
  MAXIMUM_BALLS = 1

  def on_enter
    schedule_update do |dt|
      launch_balls
    end

    on_touches_moved do |touches, event|
      touch = touches.any_object
      if ball = ball_touched(touch.location)
        ball.run_action Move.to position: touch.location
      end
    end
  end

  private

  def launch_balls
    @balls ||= []
    if @balls.size <= MAXIMUM_BALLS
      number = MAXIMUM_BALLS - @balls.size
      number.times do
        ball = BallSprite.new
        self   << ball
        @balls << ball
      end
    end
  end

  def ball_touched(touch_location)
    @balls.detect { |b| b.touched?(touch_location) }
  end
end
