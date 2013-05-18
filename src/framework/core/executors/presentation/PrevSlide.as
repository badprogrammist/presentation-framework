/**
 * User: Ildar Gafarov
 * Date: 18.05.13
 * Time: 12:02
 * Mail: badprogrammist@gmail.com
 */
package framework.core.executors.presentation
{
    import framework.core.communication.Message;
    import framework.core.messages.presentation.PrevSlideMessage;
    import framework.entity.presentation.IPresentationScenario;

    public class PrevSlide extends PresentationExecutorBase
    {
        public function PrevSlide(presentationScenario:IPresentationScenario)
        {
            super(presentationScenario);
        }

        override public function Listen(message:Message):void
        {
            if (message is PrevSlideMessage)
            {
                //var prevSlideMessage:PrevSlideMessage = message as PrevSlideMessage;
                presentationScenario.PrevSlide();
            }
        }

    }
}
