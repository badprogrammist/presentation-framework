/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 15:49
 * Mail: badprogrammist@gmail.com
 */
package framework.core.messages.view
{
    import framework.core.communication.Message;
    import framework.core.communication.sender.ISender;

    import flash.events.MouseEvent;

    public class MouseClickMessage extends MediatorMessage
    {
        public function MouseClickMessage(dispatcher:ISender)
        {
            super(MouseEvent.CLICK, dispatcher);
        }

        override public function Clone():Message
        {
            return new MouseClickMessage(dispatcher);
        }

    }
}
