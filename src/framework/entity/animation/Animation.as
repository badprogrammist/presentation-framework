/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 16:35
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.animation
{
    import com.greensock.core.TweenCore;

    import framework.entity.EntityBase;

    public class Animation extends EntityBase implements IAnimation
    {
        private var _data:Object;
        private var _duration:Number;

        public function Animation(id:String)
        {
            super(id);
            _data = new Object();
            _duration = 0.5;
        }

        public function Animate(object:Object):TweenCore
        {
            return null;
        }

        public function get data():Object
        {
            return _data;
        }

        public function get duration():Number
        {
            return _duration;
        }

        public function set duration(value:Number):void
        {
            _duration = value;
        }

    }
}
