/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 11:16
 * Mail: badprogrammist@gmail.com
 */
package framework.core.communication.sender
{
    import framework.core.communication.*;
    import framework.core.communication.listener.IListener;

    import org.as3commons.collections.Set;
    import org.as3commons.collections.framework.IIterator;
    import org.as3commons.collections.framework.ISet;

    public class Sender implements ISender
    {
        private var _listeners:ISet;

        public function Sender()
        {
            _listeners = new Set();
        }

        public function RegisterListener(listener:IListener):void
        {
            _listeners.add(listener);
        }

        public function RemoveListener(listener:IListener):void
        {
            _listeners.remove(listener);
        }

        public function Dispatch(message:Message):void
        {
            var i:IIterator = _listeners.iterator();
            while(i.hasNext())
            {
                var listener:IListener = i.next();
                listener.Listen(message);
            }
        }



    }
}
