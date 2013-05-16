/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 18:15
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.component.view
{
    import flash.display.DisplayObject;

    import framework.core.communication.sender.ISender;

    public interface IMediator extends ISender
    {
        function RegisterMessage(mediatorMessageClass:Class):void;
        function RemoveMessage(mediatorMessageClass:Class):void;
        function get displayObject():DisplayObject;
    }
}
