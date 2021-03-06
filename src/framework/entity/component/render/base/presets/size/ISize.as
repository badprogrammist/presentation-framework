/**
 *
 * User: Ildar Gafarov
 * Date: 24.03.13
 * Time: 16:57
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.component.render.base.presets.size
{
    import framework.entity.component.render.base.IRenderBase;

    public interface ISize extends IRenderBase
    {
        function get width():Number;
        function get height():Number;
    }
}
