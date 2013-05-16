/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 11:46
 * Mail: badprogrammist@gmail.com
 */
package framework.core.communication.sender
{
    import framework.core.communication.*;
    import framework.core.communication.listener.IListener;

    public interface ISender
    {
        function RegisterListener(listener:IListener):void;
        function RemoveListener(listener:IListener):void;
        function Dispatch(message:Message):void;
    }
}
