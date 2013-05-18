/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 11:28
 * Mail: badprogrammist@gmail.com
 */
package framework.core.communication.publisher
{
    import framework.core.communication.listener.IListener;

    public interface IPublisher extends IListener
    {
        function Subscribe(messageClass:Class, listener:IListener):Boolean;
        function Unsubscribe(listener:IListener):Boolean;
    }
}
