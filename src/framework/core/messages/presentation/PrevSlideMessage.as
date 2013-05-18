/**
 * User: Ildar Gafarov
 * Date: 18.05.13
 * Time: 12:07
 * Mail: badprogrammist@gmail.com
 */
package framework.core.messages.presentation
{
    import framework.core.communication.sender.ISender;

    public class PrevSlideMessage extends PresentationMessageBase
    {
        public function PrevSlideMessage(dispatcher:ISender)
        {
            super(dispatcher);
        }
    }
}
