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
    import framework.core.communication.listener.IListener;

    import org.as3commons.collections.Map;
    import org.as3commons.collections.framework.IMapIterator;

    public class Publisher implements IPublisher
    {
        private var _listeners:Map;

        public function Publisher()
        {
            _listeners = new Map();
        }

        public function Listen(message:Message):void
        {
            var iterator:IMapIterator = _listeners.iterator() as IMapIterator;
            while(iterator.hasNext())
            {
                iterator.next();
                var messageClass:Class = iterator.key;
                if (message is messageClass)
                {
                    var listener:IListener = iterator.current;
                    listener.Listen(message);
                }
            }
        }

        public function Subscribe(messageClass:Class, listener:IListener):Boolean
        {
            return _listeners.add(messageClass,listener);
        }

        public function Unsubscribe(listener:IListener):Boolean
        {
            return _listeners.remove(listener);
        }

    }
}
