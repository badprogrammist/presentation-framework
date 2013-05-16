/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 11:16
 * Mail: badprogrammist@gmail.com
 */
package framework.core.communication.listener
{
    import framework.core.communication.*;
    import framework.core.communication.listener.IListener;

    public class Listener implements IListener
    {
        public function Listener()
        {
        }

        public function Listen(message:Message):void
        {
            trace("THIS_TRACE_GENERATE_IN_LISTENER_CLASS. ","MESSAGE: ",message," DISPATCHER: ",message.dispatcher);
        }


    }
}
