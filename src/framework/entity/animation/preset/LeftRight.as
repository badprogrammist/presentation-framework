/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 17:19
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.animation.preset
{
    import framework.entity.animation.*;
    import com.greensock.TweenLite;
    import com.greensock.core.TweenCore;

    public class LeftRight extends Animation
    {
        public function LeftRight(id:String)
        {
            super(id);
        }

        override public function Animate(object:Object):TweenCore
        {
            data["x"] = object.x + object.width;
            var tween:TweenLite = new TweenLite(object, duration,data);
            tween.pause();
            return tween;
        }

    }
}
