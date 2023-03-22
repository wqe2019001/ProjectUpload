import React, { Component } from "react";
import "../css/main.css";

class Footer extends Component {
    render() {
        return (
            <> 
            <div className="footer">
                <div className="container-fluid">
                    <div className="row">
                        <div className="col-lg-8 align-self-center">
                            <a className="navbar-brand" href="#\"><img src={require('../img/logo_glowup.png').default} alt="Glow Up Brand" /></a>
                            <p className="h4">글로우업과 함께 당신만의 팔레트를 완성해보세요.</p>
                        </div>
                        <div className="col-lg-4">
                            <p className="h4">(04386) 서울 용산구 한강대로 100 글로우업</p>
                            <p className="h4">Tel. 1577-1234</p>
                            <p className="h4">Email. Glowup@glow.co.kr</p>
                        </div>
                    </div>
                </div>
            </div>
            </>
        );
    }
}
export default Footer;