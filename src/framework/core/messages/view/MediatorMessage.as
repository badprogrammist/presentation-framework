/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 15:20
 * Mail: badprogrammist@gmail.com
 */
package framework.core.messages.view
{
    import framework.core.communication.Message;
    import framework.core.communication.sender.ISender;

    public class MediatorMessage extends Message
    {
        private var _eventType:String;
        public function MediatorMessage(eventType:String, dispatcher:ISender)
        {
            _eventType = eventType;
            super(dispatcher);
        }

        public function get eventType():String
        {
            return _eventType;
        }

        override public function Clone():Message
        {
            return new MediatorMessage(eventType,dispatcher);
        }

    }
}
