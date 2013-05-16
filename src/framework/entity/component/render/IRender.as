/**
 *
 * User: Ildar Gafarov
 * Date: 24.03.13
 * Time: 14:52
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.component.render
{
    import framework.entity.component.Component;
    import framework.core.IPrototype;

    public interface IRender extends IPrototype
    {
        function Process(component:Component):void;

    }
}
