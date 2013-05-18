/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 15:20
 * Mail: badprogrammist@gmail.com
 */
package framework.core.messages.view
{
    import framework.core.IPrototype;
    import framework.core.communication.Message;
    import framework.core.communication.sender.ISender;

    public class MediatorMessageBase extends Message
    {
        private var _eventType:String;
        public function MediatorMessageBase(eventType:String, dispatcher:ISender)
        {
            _eventType = eventType;
            super(dispatcher);
        }

        public function get eventType():String
        {
            return _eventType;
        }

        override public function Clone():IPrototype
        {
            return new MediatorMessageBase(eventType,dispatcher);
        }

    }
}
