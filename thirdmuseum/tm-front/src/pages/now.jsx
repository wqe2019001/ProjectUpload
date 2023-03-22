import SubVisual from '../common/SubVisual';
import '../style/now.css'
import Now2 from '../resource/display/now2_visual.png';
import Now3 from '../resource/display/now3_visual.png';
import Now4 from '../resource/display/now4_visual.png';
import {Container, Row, Col} from 'react-bootstrap';



function now(){
    return(
        <>
            <SubVisual name={'현재 전시'} imgName={'now'} />
            <Container fluid="xxl">
                <Row>
                    <Col xs={4}>
                        <p class="NowText_Left">Color is life</p>
                    </Col>
                    <Col xs={8}>
                        <p class="NowText_Title">&#12300;올림피아 자그놀리 : LIFE IS COLOR&#12301;그림전시<br/><br/></p>
                        <p class="NowInner_Text">“Life is color”는 올림피아 자그놀리 작가의 한국 첫번째 전시이다.<br/>
                        이탈리아에서 태어나고 자란 그녀는, 어린시절부터 카라밧지오와 앤디니 등 대가들의 예술 작품들을 가까이 접하며 지냈다. 그녀는 부드러운 형태와 강렬한 색상, 인물과 공간들이 상호작용을 일으키며 만들어내는 시각적 언어를 통해 관객과 소통한다. 자그놀리의 캔버스안에서 보이는 행복한 캐릭터들은 독특한 복장과 머리모양을 하고는 각각의 자유로운 방식으로 보는 이들에게 긍정의 메세지를 전한다.<br/><br/>
                        작가의 다양한 사회적 이슈에 대한 관심은 LGBTQI+, 난민 구호, 여성 해방 등을 표현한 다수의 이미지들에서 찾아볼 수 있으며, 때로는 이미지가 글보다 더 큰 목소리를 낼 수 있음을 일러스트를 통해 실현하기도 한다. 그림이 가지고 있는 진정한 내적의 힘은 지리적인 경계에서 오는 제한이나 번역이 필요 없는 남녀노소 누구나 그림만 보고도 이해 할 수 있다는 것에 있다. 자그놀리 이미지 안의 선과 색상들은 세계 곳곳의 신문과 잡지, 아동도서 및 다양한 일상 용품들을 통해 사람들과 만난다. 그녀의 작품들은 리미티드 에디션을 구매할 수 있는 프라이빗 아트 콜렉터들에 의해 구매되기도 하지만 편의점 등에서 누구나 살 수 있는 휴대용 티슈 포장에서도 찾을 수 있다.<br/><br/>
                        이렇듯 다양한 방법으로 이미지를 통해 소통해 온 올림피아 자그놀리의 지난 19년간의 작품들 중 엄선한 180 여점을 “Life is Color” 전시에 만나볼 수 있음을 작가에게 감사를 드린다.</p>
                    </Col>
                </Row>
                <Row>
                    <Col xs={4}>
                        <p class="NowImg2_Title">국내 최초 전시</p><br/>
                        <p class="NowImg2_Text">프라다부터 디올까지,<br/>
                        최고의 브랜드가 ‘픽’한 올림피아 자그놀리의 국내 최초 전시</p>
                    </Col>
                    <Col xs={8}>
                        <img src={Now2} class="NowImg2" alt='이미지2'></img>
                    </Col>
                </Row>
                <Row>
                    <Col xs={8}>
                        <img src={Now3}class="NowImg3" alt='이미지3'></img>
                    </Col>
                    <Col xs ={1} />
                    <Col xs={3}>
                        <p class="NowImg3_Title">뉴욕에서 가장 사랑받는<br/>
                                                일러스트레이터</p>
                        <p class="NowImg3_Text">뉴요커 잡지의 상징적인 커버와<br/>
                                                뉴욕타임스의 대표적인 이미지 디자인</p>
                    </Col>
                    <Col xs={4}>
                        <p class="NowImg4_Title">150여점  전시</p>
                        <p class="NowImg4_Text">선명한 라인과 생기 넘치는 색채로 디자인 오브제와 키네틱 조각, 비디오 클립으로 창작하는 아티스트 작품 150여점 전시<br/>
                                                올림피아 자그놀리의 자유분방하고 매력적인 작품들을 한눈에 만나볼 수 있다.</p>
                    </Col>
                    <Col xs={8}>
                        <img src={Now4}class="NowImg4" alt='이미지4'></img>
                    </Col>
                </Row>
            </Container>
        </>
    )
}
export default now;