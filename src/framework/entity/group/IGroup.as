/**
 *
 * User: Ildar Gafarov
 * Date: 07.04.13
 * Time: 10:56
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.group
{
    import framework.core.IPrototype;
    import framework.entity.slide.managers.ComponentManager;

    public interface IGroup extends IPrototype
    {
        function Process(componentId:String, componentManager:ComponentManager):void;
    }
}
