/**
 * User: Ildar Gafarov
 * Date: 18.05.13
 * Time: 12:07
 * Mail: badprogrammist@gmail.com
 */
package framework.core.messages.presentation
{
    import framework.core.communication.sender.ISender;

    public class GotoSlideMessage extends PresentationMessageBase
    {
        private var _slideIndex:int;

        public function GotoSlideMessage(slideIndex:int,dispatcher:ISender)
        {
            super(dispatcher);
            _slideIndex = slideIndex;
        }

        public function get slideIndex():int
        {
            return _slideIndex;
        }
    }
}
