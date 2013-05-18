/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 16:07
 * Mail: badprogrammist@gmail.com
 */
package framework.core.messages.view
{
    import flash.events.MouseEvent;

    import framework.core.IPrototype;
    import framework.core.communication.sender.ISender;

    public class MouseMoveMessage extends MediatorMessageBase
    {
        public function MouseMoveMessage(dispatcher:ISender)
        {
            super(MouseEvent.MOUSE_MOVE, dispatcher);
        }

        override public function Clone():IPrototype
        {
            return new MouseMoveMessage(dispatcher);
        }



    }
}
