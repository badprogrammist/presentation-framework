/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 16:07
 * Mail: badprogrammist@gmail.com
 */
package framework.core.messages.view
{
    import framework.core.communication.Message;
    import framework.core.communication.sender.ISender;

    import flash.events.MouseEvent;

    public class MouseMoveMessage extends MediatorMessage
    {
        public function MouseMoveMessage(dispatcher:ISender)
        {
            super(MouseEvent.MOUSE_MOVE, dispatcher);
        }

        override public function Clone():Message
        {
            return new MouseMoveMessage(dispatcher);
        }



    }
}
