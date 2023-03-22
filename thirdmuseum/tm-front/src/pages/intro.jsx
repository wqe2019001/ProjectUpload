import {Container, Row, Col} from 'react-bootstrap';
import SubVisual from '../common/SubVisual';

function intro(){
    return(
        <>
        <SubVisual name={'미술관소개'} imgName={'intro'} />
        <Container fluid="xxl">
          <Row>
            <Col sm={12} lg={3} className="px-4 pb-3">
              <div className="fs-2 fw-bold text-wrap">세번째 미술관에<br className='d-none d-lg-block'/>오신 걸 환영합니다</div>
            </Col>
            <Col sm={12} lg={9} className="px-4 pb-5">
              <div className="fs-6 text-wrap">
                세번째미술관은 개관 반세기의 역사를 자랑하는 국내 유일의 국가현대미술관입니다.
                우리 미술관은 서울관, 과천관, 덕수궁관, 청주관의 4관 체제에서 이제 대전관 신설로 5관 체제로 진입하고 있습니다.
                우리 미술관은 ‘확장과 연결’로 열린 미술관을 지향하고 있습니다. 생활 속에서 삶의 질을 높이고, 감동과 상상력의 
                충전소로 거듭 나기를 노력하고 있습니다. 더불어 이건희컬렉션의 대량기증으로 소장품 1만점 시대에 진입했고, 보다 
                다양한 전시와 미술관 프로젝트로 국민의 곁에 늘 있기를 희망하고 있습니다. 거기다 미술한류 사업에도 박차를 가해 
                세계 속에서 한국현대미술의 존재감을 높이고자 합니다. <br/><br/>
                세번째미술관은 항상 여러분의 곁에 있습니다. 언제라도 방문하셔서 다양한 프로그램을 즐기시기를 바랍니다. 바로 
                이웃과 같은 친근하고 포근한 열린 미술관이기 때문입니다.
                개방적이고도 신바람 나는 미술관, 그러면서도 감동을 주는 미술관으로 여러분을 초대합니다. 함께하시는 
                여러분! 감사합니다.
              </div>
            </Col>
          </Row>
          <Row className='py-4 mt-5'>
            <Col className="fs-1 text-center fw-bold">History</Col>
          </Row>
          <Row className='py-4 fs-1 text-center text-white'>
            <Col xs={12} sm={6} className='position-relative'>
              <img src="/resource/intro/intro_1.png" alt="intro1" className="ratio pb-4"/>
              <p className="position-absolute top-50 start-50 translate-middle">2012.02.09<br/>개관</p>
            </Col>
            <Col xs={12} sm={6} className='position-relative'>
              <img src="/resource/intro/intro_2.png" alt="intro2" className="ratio pb-4"/>
              <p className="position-absolute top-50 start-50 translate-middle">2018.05.08<br/>C홀 신설</p>
            </Col>
          </Row>
          <Row className='py-5 mt-5'>
            <Col className="fs-1 text-center fw-bold">Vision</Col>
          </Row>
          <Row>
            <Col xs={12} sm={6} lg={3} className="px-3 pb-4">
                <img src="/resource/intro/intro_3.png" alt="intro3" className="ratio"/>
            </Col>
            <Col xs={12} sm={6} lg={3} className="px-3 pb-4">
                <img src="/resource/intro/intro_4.png" alt="intro4" className="ratio"/>
            </Col>
            <Col xs={12} sm={6} lg={3} className="px-3 pb-4">
                <img src="/resource/intro/intro_5.png" alt="intro5" className="ratio"/>
            </Col>
            <Col xs={12} sm={6} lg={3} className="px-3 pb-4">
                <img src="/resource/intro/intro_6.png" alt="intro6" className="ratio"/>
            </Col>
          </Row>
          <Row  className='py-5'>
            <Col>
              <p className="fs-5 text-center">
              첫번째장소는 집이고 두번째장소는 직장 혹은 학원 학교 등,<br/>바쁘게 사는 장소 외에 세번째미술관에서는 쉬어가길 바라는 의미를 더 알리는 것
              </p>
            </Col>
          </Row>
        </Container>
        </>
        );
    }
export default intro;