/**
 *
 * User: Ildar Gafarov
 * Date: 24.03.13
 * Time: 15:55
 * Mail: badprogrammist@gmail.com
 */
package framework.core.messages.view
{
    import flash.events.MouseEvent;

    import framework.core.communication.Message;

    import framework.core.communication.sender.ISender;

    public class MouseOverMessage extends MediatorMessage
    {
        public function MouseOverMessage(dispatcher:ISender)
        {
            super(MouseEvent.MOUSE_OVER, dispatcher);
        }

        override public function Clone():Message
        {
            return new MouseOverMessage(dispatcher);
        }
    }
}
