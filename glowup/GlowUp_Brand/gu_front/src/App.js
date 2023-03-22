import React from "react";
import Header from "./views/Header";
import Brand from "./views/Brand";
import ContactForm from "./views/ContactForm";
import Location from "./views/Location";
import Footer from "./views/Footer";
import "./css/main.css";

const App = () => {
    return (
        <>
        <Header />
        <div data-bs-spy="scroll" data-bs-target="#gnb" data-bs-offset="0" data-bs-smooth-scroll="true"  tabIndex="0">
            {/* 비주얼이미지 */}
            <div className="position-relative main_visiul">
                <div className="position-absolute txt">Glow up</div>
            </div>
            <div className="container-xxl">
                <Brand />
                <ContactForm crud="Insert" />
            </div>
            <Location />
        </div>
        <Footer />
        </>
    );
};

export default App;