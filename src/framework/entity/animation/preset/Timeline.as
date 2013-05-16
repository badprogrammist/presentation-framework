/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 17:23
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.animation.preset
{
    import com.greensock.TimelineLite;

    import framework.entity.animation.*;
    import com.greensock.core.TweenCore;

    public class Timeline extends Animation
    {
        private var _animations:Vector.<IAnimation>;

        public function Timeline(id:String)
        {
            super(id);
            _animations = new Vector.<IAnimation>();
        }

        override public function Animate(object:Object):TweenCore
        {
            var timeline:TimelineLite = new TimelineLite();
            timeline.duration = duration;
            var tweens:Array = new Array();
            for each(var animation:IAnimation in _animations)
            {
                var tween:TweenCore = animation.Animate(object);
                tween.play();
                tweens.push(tween);
            }
            timeline.appendMultiple(tweens,0,"normal");
            timeline.pause();
            return timeline;
        }


        public function AddAnimation(animation:IAnimation):void
        {
            _animations.push(animation);
        }

    }
}
