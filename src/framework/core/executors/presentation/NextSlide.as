/**
 * User: Ildar Gafarov
 * Date: 18.05.13
 * Time: 12:02
 * Mail: badprogrammist@gmail.com
 */
package framework.core.executors.presentation
{
    import framework.core.communication.Message;
    import framework.core.messages.presentation.NextSlideMessage;
    import framework.entity.presentation.IPresentationScenario;

    public class NextSlide extends PresentationExecutorBase
    {
        public function NextSlide(presentationScenario:IPresentationScenario)
        {
            super(presentationScenario);
        }

        override public function Listen(message:Message):void
        {
            if (message is NextSlideMessage)
            {
                //var nextSlideMessage:NextSlideMessage = message as NextSlideMessage;
                presentationScenario.NextSlide();
            }
        }
    }
}
