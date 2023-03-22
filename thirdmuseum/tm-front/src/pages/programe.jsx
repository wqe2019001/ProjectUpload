import SubVisual from '../common/SubVisual';
import Container from 'react-bootstrap/Container';
import Row from 'react-bootstrap/Row';
import Col from 'react-bootstrap/Col';
import '../style/program.css'

function programe(){
    return(
        <>
        <div>
          <SubVisual name={'프로그램'} imgName={''} />
        </div>
        <Container fluid="xxl">
          <Row className='mb-5'>
            <Col xs={12} lg={7}><img src="../resource/display/program_1.png" className='img-fluid' alt='프로그램1' /></Col>
            <Col xs={12} lg={5}>
              <div>
                <h2 className='proh mt-2'>《강석호: 3분의 행복》전시연계 대담</h2>
                세번째 미술관은《강석호: 3분의 행복》 전시와 연계하여 진행하는 대담에 여러분을 초대합니다.
                본 연계 프로그램에서는 동료 예술가의 관점에서 강석호 작가의 회화관과 미감에 대한 통찰을 공유하고 작가의 예술 세계에 대해 심층적으로 탐구합니다. <br /> 별도의 사전 예약 없이 현장 등록을 통해 참여할 수 있습니다.<br /> 
                <br /> 
                <h5 className='proh mb-0'>대상</h5>
                누구나
                <h5 className='proh mb-0 pt-3'>운영 시기</h5>
                2023-02-17 ~ 2023-02-28
                <h5 className='proh mb-0 pt-3'>장소</h5>
                세번째 미술관 B홀
              </div>
            </Col>
          </Row>
          <Row className='mb-5'>
            <Col xs={12} lg={7}><img src="../resource/display/program_2.png" className='img-fluid' alt='프로그램2' /></Col>
            <Col xs={12} lg={5}>
              <div>
                <h2 className='proh mt-2'>아트랜드, 너는 누구니?</h2>
                생활 속에서 나온 재활용 용기들을 가지고 구조물을 만듭니다. 점토를 활용해 다양한 색상을 조색하고, 자신만의 캐릭터를 상상합니다. 스스로 창작한 캐릭터에 이름을 붙이고, 창의력을 발휘하며 캐릭터가 먹는 먹이, 사는 장소 등 다양한 특성들을 지어 나갑니다. 아이들이 직접 만든 결과물은 '아트랜드'의 일부로 더해지며 작품으로 전시됩니다.<br /> 
                <br />
                <h5 className='proh mb-0'>대상</h5>
                어린이
                <h5 className='proh mb-0 pt-3'>운영 시기</h5>
                2023-01-25 ~ 2023-02-03
                <h5 className='proh mb-0 pt-3'>장소</h5>
                세번째 미술관 C홀
              </div>
            </Col>
          </Row>
          <Row className='mb-5'>
            <Col xs={12} lg={7}><img src="../resource/display/program_3.png" className='img-fluid' alt='프로그램3' /></Col>
            <Col xs={12} lg={5}>
              <div>
                <h2 className='proh mt-2'>학급단체를 위한 티쳐스 팩</h2>
                “나는 사람의 피부와 모낭을 그리면서 동물을 바라보기 시작했다. 그러고 나서 나는 동물을 그리기 시작했는데, 내가 머리카락 그리는 것을 좋아했기 때문이다. 나는 우리가 얼마나 새나 다른 포유류와 유사한지 깨닫게 되었다. 비례는 바뀔지라도 털과 피부가 얼굴로 옮겨가는 방식은 털이 동물의 몸에 나타나는 방식과 같다.” - 키키 스미스<br /> 
                <br />
                <h5 className='proh mb-0'>대상</h5>
                누구나
                <h5 className='proh mb-0 pt-3'>운영 시기</h5>
                2023-01-04 ~ 2023-02-09
                <h5 className='proh mb-0 pt-3'>장소</h5>
                세번째 미술관 A홀
              </div>
            </Col>
          </Row>
      </Container>
        </>
    )
}
export default programe;