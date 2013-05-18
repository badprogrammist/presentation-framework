/**
 * User: Ildar Gafarov
 * Date: 18.05.13
 * Time: 12:06
 * Mail: badprogrammist@gmail.com
 */
package framework.core.messages.presentation
{
    import framework.core.communication.sender.ISender;

    public class NextSlideMessage extends PresentationMessageBase
    {
        public function NextSlideMessage(dispatcher:ISender)
        {
            super(dispatcher);
        }
    }
}
