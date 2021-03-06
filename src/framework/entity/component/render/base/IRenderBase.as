/**
 *
 * User: Ildar Gafarov
 * Date: 28.03.13
 * Time: 22:05
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.component.render.base
{
    import framework.entity.component.render.*;

    public interface IRenderBase extends IRender
    {
        function RegisterRelate(renderClass:Class):void;
        function GetRelatesLength():int;
    }
}
