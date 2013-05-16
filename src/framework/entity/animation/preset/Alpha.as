/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 17:53
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.animation.preset
{
    import com.greensock.TweenLite;
    import com.greensock.core.TweenCore;

    import flash.display.DisplayObject;

    import framework.entity.animation.Animation;

    public class Alpha extends Animation
    {
        public function Alpha(id:String)
        {
            super(id);
        }

        override public function Animate(object:Object):TweenCore
        {
            (object as DisplayObject).alpha = 0;
            data["alpha"] = 1;
            var tween:TweenLite = new TweenLite(object, duration,data);
            tween.pause();
            return tween;
        }

    }
}
