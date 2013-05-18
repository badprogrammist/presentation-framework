/**
 *
 * User: Ildar Gafarov
 * Date: 24.03.13
 * Time: 15:57
 * Mail: badprogrammist@gmail.com
 */
package framework.core.messages.view
{
    import flash.events.MouseEvent;

    import framework.core.IPrototype;
    import framework.core.communication.sender.ISender;

    public class MouseOutMessage extends MediatorMessageBase
    {
        public function MouseOutMessage(dispatcher:ISender)
        {
            super(MouseEvent.MOUSE_OUT, dispatcher);
        }

        override public function Clone():IPrototype
        {
            return new MouseOutMessage(dispatcher);
        }

    }
}
