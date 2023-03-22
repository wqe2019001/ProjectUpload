import React, { Component } from "react";
import "../css/main.css";

class Header extends Component {
    render() {
        return (
            <> 
            <span id="top"></span>
            <nav id="gnb" className="navbar navbar-expand-xl fixed-top">
                <div className="container-fluid">
                    <a className="navbar-brand" href="#top"><img src={require('../img/logo_glowup.png').default} alt="Glow Up Brand" /></a>
                    <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbar" aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
                        <span className="navbar-toggler-icon"></span>
                    </button>
                    <div className="collapse navbar-collapse" id="navbar">
                        <ul className="navbar-nav nav-pills me-auto">
                            <li className="nav-item">
                                <a className="nav-link" href="#brand">브랜드스토리</a>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link" href="#tech">R&I</a>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link" href="#identity">디자인</a>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link" href="#individuality">기치관</a>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link" href="#contact">Contact</a>
                            </li>
                            <li className="nav-item">
                                <a className="nav-link" href="#directions">오시는길</a>
                            </li>
                        </ul>
                    <a className="btn_shop d-flex" href="http://localhost:9500" target={"_blank"} rel="noreferrer">공식 온라인몰</a>
                    </div>
                </div>
            </nav>
            </>
        );
    }
}
export default Header;