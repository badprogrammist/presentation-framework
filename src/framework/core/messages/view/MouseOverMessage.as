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

    import framework.core.IPrototype;
    import framework.core.communication.sender.ISender;

    public class MouseOverMessage extends MediatorMessageBase
    {
        public function MouseOverMessage(dispatcher:ISender)
        {
            super(MouseEvent.MOUSE_OVER, dispatcher);
        }

        override public function Clone():IPrototype
        {
            return new MouseOverMessage(dispatcher);
        }
    }
}
