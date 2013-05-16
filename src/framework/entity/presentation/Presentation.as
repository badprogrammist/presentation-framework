/**
 * User: Ildar Gafarov
 * Date: 16.05.13
 * Time: 22:03
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.presentation
{
    import framework.entity.EntityBase;
    import framework.entity.slide.Slide;
    import framework.repository.EntityRepository;
    import framework.repository.IEntityRepository;

    public class Presentation extends EntityBase
    {
        private var _slideRepository:IEntityRepository = new EntityRepository();
        private var _presentationScenario:PresentationScenario;

        public function Presentation(id:String,presentationScenario:PresentationScenario)
        {
            super(id);
            _presentationScenario = presentationScenario;
        }

        public function AddSlide(slide:Slide):void
        {
            _slideRepository.AddEntity(slide);
        }

        public function get presentationScenario():PresentationScenario
        {
            return _presentationScenario;
        }
    }
}
