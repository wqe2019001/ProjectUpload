/* 로그인 페이지 */
import React, { useEffect } from "react";
import NaverLogin from "react-login-by-naver";
import "../style/login.css"; // 이 페이지의 커스텀 디자인을 위한 CSS 입니다.

const Callback = () => {

  useEffect(() => {

    if (localStorage.getItem("login") === "true") {
      alert("이미 로그인 상태입니다.");
    }
  }, []);

  const responseLogin = (res, type) => {

  }
  return (
      <div className="column">
        <NaverLogin
          clientId="n1kn5LACRmL9KXPGqhe8"
          callbackUrl="http://192.168.0.30:3000/management-callback"
          render={(props) => <div onClick={props.onClick}></div>}
          onSuccess={(res) => responseLogin(res, "naver")}
        />
      </div>
  );
};

export default Callback;

//0301