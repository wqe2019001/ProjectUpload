import Accordion from 'react-bootstrap/Accordion';
import SubVisual from '../common/SubVisual';
import '../style/attention.css'

function attention(){
    return (
      <>
        <div>
          <SubVisual name={'관람 유의사항'} imgName={'attention'} />
        </div>
        <Accordion defaultActiveKey="0" className='fs-5 attentionac' flush>
          <Accordion.Item eventKey="0">
            <Accordion.Header>Q<span className='ms-5' />
            <div className='fs-5'>전시 관람을 위해 사전 예약을 해야하나요?</div></Accordion.Header>
            <Accordion.Body className='ms-5 mt-3 mb-3'>
            세번째미술관 모든 분관은 사전 예약 없이 현장 관람이 가능합니다.
            <br/>
            <br/>
            ⦁ 미술창작스튜디오는 입주작가만 출입가능합니다.
            <br/>
            ⦁ SeMA 벙거 및 SeMA 창고는 전시가 개최 중일 때만 방문 가능합니다.
            </Accordion.Body>
          </Accordion.Item>
          <Accordion.Item eventKey="1">
            <Accordion.Header>Q<span className='ms-5' />
            <div className='fs-5'>신청하면 누구나 교육을 들을 수 있나요?</div></Accordion.Header>
            <Accordion.Body className='ms-5 mt-3 mb-3'>
              신청하신분들 누구나 교육을 들으실 수 있습니다. <br/>
              다만 일부 과목에는 과목의 특성상 연령제한이 있을 수 있으니 참고 부탁드립니다. <br/>
              현재 전화 신청은 불가능하며 인터넷으로 신청해 주시기 바랍니다.
            </Accordion.Body>
          </Accordion.Item>
          <Accordion.Item eventKey="2">
            <Accordion.Header>Q<span className='ms-5' />
            <div className='fs-5'>강의계획서를 볼 수 있나요?</div></Accordion.Header>
            <Accordion.Body className='ms-5 mt-3 mb-3'>
              현재 온라인 조회 업무가 중지된 상태로 전시실 입장 전에 요청하시는 분들에겐 따로 강의계획서를 배부하고 있습니다. <br/>
            </Accordion.Body>
          </Accordion.Item>
          <Accordion.Item eventKey="3">
            <Accordion.Header>Q<span className='ms-5' />
            <div className='fs-5'>교육 및 행사 선발 확인은 어디서 하나요?</div></Accordion.Header>
            <Accordion.Body className='ms-5 mt-3 mb-3'>
              교육 및 행사 선발 확인은 공지사항에서 확인하실 수 있습니다.
            </Accordion.Body>
          </Accordion.Item>
          <Accordion.Item eventKey="4">
            <Accordion.Header>Q<span className='ms-5' />
            <div className='fs-5'>전시실에서 사진 촬영이 가능한가요?</div></Accordion.Header>
            <Accordion.Body className='ms-5 mt-3 mb-3 '>
            기본적으로 미술전시 관람 시 사진촬영은 금지하고 있습니다. <br/>
            <br/>
              1. 작품의 저작권자인 작가의 허락 없이 작품을 무단으로 촬영할 수 없습니다. <br/>
              2. 카메라 라이트를 사용시 작품에 안좋은 미칠 수 있습니다. <br/>
              3. 촬영 시 다른 관람객의 관람에 방해를 줄 수도 있습니다.
            </Accordion.Body>
          </Accordion.Item>
          <Accordion.Item eventKey="5">
            <Accordion.Header>Q<span className='ms-5' />
            <div className='fs-5'>무료 관람 가능한 전시는 무엇인가요?</div></Accordion.Header>
            <Accordion.Body className='ms-5 mt-3 mb-3'>
              현재 진행중인 무료 전시는 없습니다.
            </Accordion.Body>
          </Accordion.Item>
          <Accordion.Item eventKey="6">
            <Accordion.Header>Q<span className='ms-5' />
            <div className='fs-5'>유모차와 휠체어를 대여할 수 있나요?</div></Accordion.Header>
            <Accordion.Body className='ms-5 mt-3 mb-3'>
              미술관 방문 하루 전 전화로 미리 예약을 주시거나, 현장 데스크에서 유모차나 휠체어 대여를 요청하시면 <br/>
              대여가 가능합니다. 대여 보증금이 있으니 참고 부탁드립니다.
            </Accordion.Body>
          </Accordion.Item>
          <Accordion.Item eventKey="7">
            <Accordion.Header>Q<span className='ms-5' />
            <div className='fs-5'>세번째미술관에서 발견한 전시 관련 도서 및 도록은 어디서 구매하나요?</div>
            </Accordion.Header>
            <Accordion.Body className='ms-5 mt-3 mb-3'>
              전시 관련 도서 및 도록은 세번째미술관 1층에 있는 예술서점 TMU X 더레퍼런스에서 구매 가능합니다.
            </Accordion.Body>
          </Accordion.Item>
          <Accordion.Item eventKey="8">
            <Accordion.Header>Q<span className='ms-5' />
            <div className='fs-5'>현재 진행중인 전시는 어떤 전시인가요?</div></Accordion.Header>
            <Accordion.Body className='ms-5 mt-3 mb-3'>
              「올림피아 자그놀리 : LIFE IS COLOR」그림전시가 진행중입니다.
                <br/>
                <br/>
              “Life is color”는 올림피아 자그놀리 작가의 한국 첫번째 전시이다. <br/>
              이탈리아에서 태어나고 자란 그녀는, 어린시절부터 카라밧지오와 앤디니 등 대가들의 예술 작품들을 가까이 접하며 지냈다. 그녀는 부드러운 형태와 강렬한 색상, 인물과 공간들이 상호작용을 일으키며 만들어내는 시각적 언어를 통해 관객과 소통한다. 자그놀리의 캔버스안에서 보이는 행복한 캐릭터들은 독특한 복장과 머리모양을 하고는 각각의 자유로운 방식으로 보는 이들에게 긍정의 메세지를 전하는 전시입니다.
            </Accordion.Body>
          </Accordion.Item>
          <Accordion.Item eventKey="9">
            <Accordion.Header>Q<span className='ms-5' />
            <div className='fs-5'>아트상품 구입은 어디서 할 수 있나요?</div></Accordion.Header>
            <Accordion.Body className='ms-5 mt-3 mb-3'>
              세번째미술관 아트상품은 1층 예술서점 TMU X 더레퍼런스에서 구매할 수 있습니다.  <br/>
              다만 모든 기획전시가 아트상품을 제작, 판매하지는 않습니다. 
              자세한 문의사항은 방문 전 유선전화나 현장 데스크에서 문의해주시기 바랍니다.
            </Accordion.Body>
          </Accordion.Item>
          <Accordion.Item eventKey="10">
            <Accordion.Header>Q<span className='ms-5' />
            <div className='fs-5'>소장품의 수집은 어떻게 이루어지나요?</div></Accordion.Header>
            <Accordion.Body className='ms-5 mt-3 mb-3'>
            매년 공모(일반/주제)와 미술관 학예직 제안을 통해 수집 대상 작품을 구성하며 내·외부 전문가로 이루어진 소장작품 추천회의, 가격평가심의위원회, 미술관운영자문위원회를 거쳐 작품을 수집하고 있습니다
            </Accordion.Body>
          </Accordion.Item>
        </Accordion>
        </>
      );
    }
export default attention;