/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 17:15
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.animation
{
    import com.greensock.core.TweenCore;

    import framework.core.IIdentified;

    public interface IAnimation extends IIdentified
    {
        function Animate(object:Object):TweenCore;
        function get data():Object;
        function get duration():Number;
        function set duration(value:Number):void;

    }
}
