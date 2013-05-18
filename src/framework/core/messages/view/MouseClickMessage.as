/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 15:49
 * Mail: badprogrammist@gmail.com
 */
package framework.core.messages.view
{
    import flash.events.MouseEvent;

    import framework.core.IPrototype;
    import framework.core.communication.sender.ISender;

    public class MouseClickMessage extends MediatorMessageBase
    {
        public function MouseClickMessage(dispatcher:ISender)
        {
            super(MouseEvent.CLICK, dispatcher);
        }

        override public function Clone():IPrototype
        {
            return new MouseClickMessage(dispatcher);
        }

    }
}
