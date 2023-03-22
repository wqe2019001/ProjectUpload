import {Container, Row, Col} from 'react-bootstrap';
import SubVisual from '../common/SubVisual';

function past(){
    return(
        <>
        <SubVisual name={'과거전시'} imgName={''} />
        <Container fluid="xxl">
            <Row>
                <Col xs={12} sm={6} md={4} lg={3} className="px-3 pb-5">
                    <img src="/resource/display/past_1.png" alt="past1" className="ratio"/>
                    <div className="py-4">
                        <p className="fs-5 fw-bold text-wrap">창동레지던시 입주보고서 2022: 김 홀 리 첸</p>
                        <p>2022-11-25 ~ 2022-12-04</p>
                    </div>
                </Col>
                <Col xs={12} sm={6} md={4} lg={3} className="px-3 pb-5">
                    <img src="/resource/display/past_2.png" alt="past2" className="ratio"/>
                    <div className="py-4">
                        <p className="fs-5 fw-bold text-wrap">국립현대미술관 «2022 고양레지던시 오픈스튜디오 18 모두 다른 빛깔»</p>
                        <p>2022-11-11 ~ 2022-11-13</p>
                    </div>
                </Col>
                <Col xs={12} sm={6} md={4} lg={3} className="px-3 pb-5">
                    <img src="/resource/display/past_3.png" alt="past3" className="ratio"/>
                    <div className="py-4">
                        <p className="fs-5 fw-bold text-wrap">김순기: 게으른 구름</p>
                        <p>2022-11-25 ~ 2022-12-04</p>
                    </div>
                </Col>
                <Col xs={12} sm={6} md={4} lg={3} className="px-3 pb-5">
                    <img src="../resource/display/past_4.png" alt="past4" className='ratio'/>
                    <div className='py-4'>
                        <p className="fs-5 fw-bold text-wrap">MMCA 청주프로젝트 2022 «도시공명»</p>
                        <p className="fs-6 my-2">2022-08-24 ~ 2022-11-27</p>
                    </div>
                </Col>
                <Col xs={12} sm={6} md={4} lg={3} className="px-3 pb-5">
                    <img src="/resource/display/past_5.png" alt="past5" className="ratio"/>
                    <div className="py-4">
                        <p className="fs-5 fw-bold text-wrap">MMCA 과천프로젝트 2021: 예술버스쉼터_쓸모없는 건축과 유용한 조각에 대하여</p>
                        <p>2021-12-15 ~ 2022-11-20</p>
                    </div>
                </Col>
                <Col xs={12} sm={6} md={4} lg={3} className="px-3 pb-5">
                    <img src="/resource/display/past_6.png" alt="past6" className="ratio"/>
                    <div className="py-4">
                        <p className="fs-5 fw-bold text-wrap">대지의 시간</p>
                        <p>2021-11-25 ~ 2022-03-27</p>
                    </div>
                </Col>
                <Col xs={12} sm={6} md={4} lg={3} className="px-3 pb-5">
                    <img src="/resource/display/past_7.png" alt="past7" className="ratio"/>
                    <div className="py-4">
                        <p className="fs-5 fw-bold text-wrap">최욱경, 앨리스의 고양이</p>
                        <p>2021-10-27 ~ 2022-02-13</p>
                    </div>
                </Col>
                <Col xs={12} sm={6} md={4} lg={3} className="px-3 pb-5">
                    <img src="/resource/display/past_8.png" alt="past8" className="ratio"/>
                    <div className="py-4">
                        <p className="fs-5 fw-bold text-wrap">DMZ 극장</p>
                        <p>2021-08-20 ~ 2021-10-03</p>
                    </div>
                </Col>
            </Row>
        </Container>
        </>
        );
    }
export default past;