/**
 * User: Ildar Gafarov
 * Date: 16.05.13
 * Time: 22:19
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.presentation
{
    import framework.repository.IEntityRepository;

    import org.as3commons.collections.LinkedList;

    public class PresentationScenario
    {
        private var _sequence:LinkedList = new LinkedList();
        private var _slideRepository:IEntityRepository;

        private var _currentIndex:int = -1;
        private var _currentSlideId:String;

        public function PresentationScenario(slideRepository:IEntityRepository)
        {
            _slideRepository = slideRepository;
        }

        public function AddNextSlide(slideId:String):void
        {
            _sequence.add(slideId);
        }


        public function NextSlide():void
        {
            if (_sequence.size != 0)
            {
                if (_currentIndex < _slideRepository.size - 1)
                {

                }
            }
        }

        public function PrevSlide():void
        {

        }

        public function GotoSlideByIndex(index:int):void
        {

        }

        public function GotoSlideById(id:String):void
        {

        }

    }
}
