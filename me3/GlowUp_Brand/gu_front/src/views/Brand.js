import React, { Component } from "react";
import "../css/main.css";

class Brand extends Component {
    render() {
        return (
            <> 
            {/* 브랜드스토리 */}
            <span id="brand" className="d-block pt200"></span>
            <div className="row d-flex justify-content-between align-items-center">
                <div className="col-md-12 col-lg-5">
                    <p className="display-5">Our <br />Brand Stroy</p>
                    <p className="h3">Glow up만의 창조하는 아름다움으로 <br className="d-none d-lg-block" />새로운 역사를 써 내려갑니다.</p>
                    <p className="h3">사람과 세상을 더 아름답게 하는 <br className="d-none d-lg-block" />소명을 이루고자 미의 여정을 이어갑니다.</p>
                </div>
                <div className="col-md-12 col-lg-7"><img src={require('../img/img_brand01.png').default} alt="" className="img-fluid" /></div>
            </div>
            {/* R&I */}
            <div id="tech" className="row d-flex justify-content-between align-items-center pt200">
                <div className="col-md-12 col-lg-4 order-2">
                    <p className="display-5">Research <br />& Innovation</p>
                    <p className="h3">
                        최초, 최고의 제품을 전 세계에 전하기 <br className="d-none d-lg-block"/>
                        위한 혁신적인 연구개발과 좋은 원료, <br className="d-none d-lg-block" />
                        첨단기술을 토대로 세계가 주목하는 <br className="d-none d-lg-block" />
                        아름다움을 만들어 냅니다.
                    </p>
                </div>
                <div className="col-md-12 col-lg-8 order-1"><img src={require('../img/img_brand02.png').default} alt="" className="img-fluid" /></div>
            </div>
            {/* 디자인 */}
            <div id="identity" className="row d-flex justify-content-between align-items-center pt200">
                <div className="col-md-12 col-lg-6">
                    <p className="display-5">Creative <br />Visual Identity</p>
                    <p className="h3">
                        글로우업은 실용적인 패키지, <br className="d-none d-lg-block" />
                        혁신적인 텍스처와 컬러, 오래가는 지속력 등 <br className="d-none d-lg-block" />
                        트렌드를 충실히 리드하는 <br className="d-none d-lg-block" />
                        일상 속 메이크업 제품들을 만듭니다.
                    </p>
                </div>
                <div className="col-md-12 col-lg-6 text-right"><img src={require('../img/img_brand03.png').default} alt="" className="img-fluid" /></div>
            </div>
            {/* 가치관 */}
            <div id="individuality" className="row d-flex justify-content-between align-items-center pt200">
                <div className="col-md-12 col-lg-6 order-2">
                    <p className="display-5">Individuality</p>
                    <p className="h3">
                        일상 속 메이크업 제품들이 글로우업만의 철학과 <br className="d-none d-lg-block" />
                        크리에이티브한 감각을 바탕으로 트렌디해지며, <br className="d-none d-lg-block" />
                        개인의 아름다움과 고유의 개성을 찾기 위해 노력합니다.
                    </p>
                    <p className="h3">
                        글로우업은 ‘나만의 아름다움과 고유의 개성을 찾는 것이 <br className="d-none d-lg-block" />
                        진정한 뷰티'라는 철학으로 각자의 성격, 취향에 따라 <br className="d-none d-lg-block" />
                        달라져야 한다는 가치관을 반영했습니다.
                    </p>
                </div>
                <div className="col-md-12 col-lg-6 order-1"><img src={require('../img/img_brand04.png').default} alt="" className="img-fluid" /></div>
            </div>
            </>
        );
    }
}
export default Brand;