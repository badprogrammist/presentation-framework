/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 11:35
 * Mail: badprogrammist@gmail.com
 */
package framework.core.communication.publisher
{
    import framework.core.communication.*;
    import framework.core.communication.publisher.IPublisher;
    import framework.core.communication.listener.IListener;

    public class Publisher implements IPublisher
    {
        private var _messages:Vector.<Class>;
        private var _listeners:Vector.<IListener>;

        public function Publisher()
        {
            _messages = new Vector.<Class>();
            _listeners = new Vector.<IListener>();
        }

        public function Listen(message:Message):void
        {
            for (var i:uint = 0; i < _messages.length; i++)
            {
                if (message is _messages[i])
                {
                    _listeners[i].Listen(message);
                }
            }
        }

        public function Subscribe(messageClass:Class, listener:IListener):void
        {
            _messages.push(messageClass);
            _listeners.push(listener);
        }

        public function Unsubscribe(listener:IListener):void
        {
            for (var i:uint = 0; i < _listeners.length; i++)
            {
                if (listener == _listeners[i])
                {
                    deleteSubscriber(i);
                    i--;
                }
            }
        }

        private function deleteSubscriber(index:uint):void
        {
            if ((index < _messages.length) && (index < _listeners.length))
            {
                _messages.slice(index,1);
                _listeners.slice(index,1);
            }
        }

    }
}
