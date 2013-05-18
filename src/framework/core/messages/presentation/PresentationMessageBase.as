/**
 * User: Ildar Gafarov
 * Date: 18.05.13
 * Time: 12:04
 * Mail: badprogrammist@gmail.com
 */
package framework.core.messages.presentation
{
    import framework.core.communication.Message;
    import framework.core.communication.sender.ISender;

    public class PresentationMessageBase extends Message
    {
        public function PresentationMessageBase(dispatcher:ISender)
        {
            super(dispatcher);
        }
    }
}
