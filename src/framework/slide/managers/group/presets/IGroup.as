/**
 *
 * User: Ildar Gafarov
 * Date: 07.04.13
 * Time: 10:56
 * Mail: badprogrammist@gmail.com
 */
package framework.slide.managers.group.presets
{
    import framework.core.IPrototype;
    import framework.slide.managers.ComponentManager;

    public interface IGroup extends IPrototype
    {
        function Process(componentId:String, componentManager:ComponentManager):void;
    }
}
