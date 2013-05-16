/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 13:21
 * Mail: badprogrammist@gmail.com
 */
package framework.core.communication.sender
{
    import framework.core.communication.Message;
    import framework.core.communication.listener.IListener;

    public class SimpleSender implements ISender
    {
        private var _listener:IListener;

        public function SimpleSender()
        {
        }

        public function RegisterListener(listener:IListener):void
        {
            if (_listener == null) _listener = listener;
            else throw new Error("ATTEMPT_TO_ADD_ANOTHER_LISTENER_IN_SIMPLE_DISPATHER");
        }

        public function RemoveListener(listener:IListener):void
        {
            _listener = null;
        }

        public function Dispatch(message:Message):void
        {
            if (_listener) _listener.Listen(message);
        }
    }
}
