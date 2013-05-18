/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 11:20
 * Mail: badprogrammist@gmail.com
 */
package framework.core.communication
{
    import framework.core.IPrototype;
    import framework.core.communication.sender.ISender;
    import framework.entity.component.Component;

    public class Message implements IPrototype
    {
        private var _dispatcher:ISender;
        private var _component:Component;

        public function Message(dispatcher:ISender)
        {
            _dispatcher = dispatcher;
        }

        public function get dispatcher():ISender
        {
            return _dispatcher;
        }

        public function get component():Component
        {
            return _component;
        }

        public function set component(value:Component):void
        {
            _component = value;
        }

        public function Clone():IPrototype
        {
            return new Message(dispatcher);
        }

    }
}
