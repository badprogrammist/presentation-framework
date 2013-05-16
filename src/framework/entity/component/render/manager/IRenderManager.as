/**
 *
 * User: Ildar Gafarov
 * Date: 25.03.13
 * Time: 21:49
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.component.render.manager
{
    import framework.entity.component.render.*;
    import framework.entity.component.render.base.IRenderBase;
    import framework.entity.component.render.base.presets.border.IBorder;
    import framework.entity.component.render.base.presets.fill.IFill;
    import framework.entity.component.render.base.presets.position.IPosition;
    import framework.entity.component.render.base.presets.shape.IShape;
    import framework.entity.component.render.base.presets.size.ISize;

    import org.as3commons.collections.framework.IIterator;

    public interface IRenderManager extends IRender
    {
        function AddRenderBase(renderBase:IRenderBase):void;
        function GetRenderBases():IIterator;
        function GetRenderBase(renderBaseClass:Class):IRenderBase;
    }
}
