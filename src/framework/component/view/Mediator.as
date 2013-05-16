/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 12:21
 * Mail: badprogrammist@gmail.com
 */
package framework.component.view
{
    import framework.core.communication.Message;
    import framework.core.messages.view.MediatorMessage;

    import flash.display.DisplayObject;

    import framework.core.communication.sender.Sender;

    import flash.events.Event;

    import org.as3commons.collections.Map;

    import org.as3commons.collections.framework.IMap;

    public class Mediator extends Sender implements IMediator
    {
        private var _displayObject:DisplayObject;
        private var _eventMap:IMap;

        public function Mediator(displayObject:DisplayObject)
        {
            super();
            _displayObject = displayObject;
            _eventMap = new Map();
        }

        public function RegisterMessage(mediatorMessageClass:Class):void
        {
            var message:MediatorMessage = new mediatorMessageClass(null);
            _displayObject.addEventListener(message.eventType,processEvent);
            _eventMap.add(message.eventType,mediatorMessageClass);
        }

        public function RemoveMessage(mediatorMessageClass:Class):void
        {
            var message:MediatorMessage = new mediatorMessageClass(null);
            _displayObject.removeEventListener(message.eventType,processEvent);
            _eventMap.removeKey(message.eventType);
        }

        private function processEvent(e:Event):void
        {
            if (_eventMap.hasKey(e.type))
            {
                var messageClass:Class = _eventMap.itemFor(e.type);
                var message:Message = new messageClass(this);
                Dispatch(message);
            }
        }

        public function get displayObject():DisplayObject
        {
            return _displayObject;
        }
    }
}
