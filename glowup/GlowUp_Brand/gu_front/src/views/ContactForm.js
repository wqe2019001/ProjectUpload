import axios from "axios";
import React, { Component } from "react";
import "../css/main.css";

class ContactForm extends Component {
  constructor(props) {
    super(props);
    this.state = {
      conNo: "",
      conRegId: "",
      conEmail: "",
      conPhone: "",
      conContent: "",
      //by 김은주 230318, route path대신 props를 전달받도록 수정
      // crud: props.match.params.crud,
      crud: this.props.crud,
    };
  }

  //by 김은주 230318, 전체기능은 Insert만 남기고 삭제
  crud() {
    const { conNo, conRegId, conEmail, conPhone, conContent, crud } = this.state;

    let crudType = "";

    if (crud === "Update") {
      crudType = "/updateProcess.do";
    } else if (crud === "Delete") {
      crudType = "/deleteProcess.do";
    } else if (crud === "Insert") {
      crudType = "/insertProcess.do";
    } else if (crud === "View") {
      return null;
    }

    let form = new FormData();
    form.append("conRegId", conRegId);
    form.append("conEmail", conEmail);
    form.append("conPhone", conPhone);
    form.append("conContent", conContent);
    if (crud !== "Insert") {
      form.append("conNo", conNo);
    }
    axios
      .post(crudType, form)
      .then((res) => {
        alert("문의가 정상처리되었습니다");
        // this.props.history.push("/Insert");
        window.location.replace("/");
      })
      .catch((err) => alert("error: " + err.response.data.msg));
  }

  render() {

    return (
        <> 
        <div className="pt200">
            <p className="display-5 con_slogan">Building Brands, One <br className="d-none d-lg-block" />Success Story at a Time.</p>
            <p className="h3">Glow up은 변하는 시대에 맞춰 가치관을 새롭게 정립해왔습니다. 그리고 이를 성장을 위한 나침반으로 삼았습니다. <br />
            Glow up은 이 세상 모든 이들이 아름답다고 믿습니다. <br />
            모두가 자신만의 아름다움을 발견하고 실현하는 삶이 모여 더 나은 세상을 만들 수 있다고 여깁니다.</p>
        </div>
        <span id="contact" className="d-block pt200"></span>
        <div className="row ">
            <div className="col-lg-3 display-5">Contact</div>
            <div className="col-lg-9">
                <div className="form-floating mb-4">
                    <input type="text" className="form-control form-control-lg" id="name" placeholder="이름" onChange={(event) => this.setState({ conRegId: event.target.value })} autoComplete="off" required />
                    <label htmlFor="name">이름</label>
                </div>
                <div className="form-floating mb-4">
                    <input type="text" className="form-control form-control-lg" id="email" placeholder="이메일" onChange={(event) => this.setState({ conEmail: event.target.value })} autoComplete="off" required />
                    <label htmlFor="email">이메일</label>
                </div>
                <div className="form-floating mb-4">
                    <input type="email" className="form-control form-control-lg" id="phone" placeholder="연락처" onChange={(event) => this.setState({ conPhone: event.target.value })} autoComplete="off" required />
                    <label htmlFor="phone">연락처</label>
                </div>
                <div className="form-floating mb-4">
                    <textarea className="form-control form-control-lg" rows="10" cols="20" placeholder="내용" onChange={(event) => this.setState({ conContent: event.target.value })} required ></textarea>
                    <label htmlFor="phone">문의메세지를 남겨주세요.</label>
                </div>
                <div className="d-flex col-auto">
                    <button className="btn btn-dark btn-lg ms-auto px-5 py-3" onClick={() => this.crud()}>문의하기</button>
                </div>
            </div>
        </div>
        </>
    );
  }
}

ContactForm.defaultProps = {
  crud : 'Insert'
}

export default ContactForm;