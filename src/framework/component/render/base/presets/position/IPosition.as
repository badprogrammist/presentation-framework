/**
 *
 * User: Ildar Gafarov
 * Date: 25.03.13
 * Time: 20:29
 * Mail: badprogrammist@gmail.com
 */
package framework.component.render.base.presets.position
{
    import framework.component.render.base.IRenderBase;

    public interface IPosition extends IRenderBase
    {
        function get x():Number;
        function get y():Number;
        function set x(value:Number):void;
        function set y(value:Number):void;

    }
}
