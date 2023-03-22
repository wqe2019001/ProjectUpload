import express from "express";
import cors from "cors"; //local서버 환경에서 API 연동을 위해서 cors 라이브러리를 설치했습니다.
import bodyParser from "body-parser"; // 요청을 parser해주는 라이브러리
import { getRows, getResult } from "./db.js"; // db.js에서 설명완료

const app = express();
app.use(cors());
const port = process.env.PORT || 3001; // 포트 3001
app.use(bodyParser.json());


app.post("/api/login", (req, res) => {
  // /api/login 주소에 post 요청이 날라왓을때 동작합니다.
  const { userId, userPw } = req.body.formData; // react단으로부터 id와 pw를 받아옵니다.
  getRows(
    `SELECT *FROM ACCOUNTS WHERE USERID = '${userId}' AND USERPASSWORD = '${userPw}'` // ID와 비밀번호를 확인하는 쿼리문을 날립니다.
  ).then((result) => {
    if (result.length < 1) {
      // 길이가 1 미만이면, 일치하는게 1개도 없다는 것이니, 회원가입해달라는 메세지를 뿌려주면 됩니다.
      res.json({ success: false, msg: "아이디가 존재하지 않습니다." });
    } else {
      // 그 반대로는 계정이 존재한다는 소리이니, 환영한다는 메세지를 뿌려줍니다.

      res.json({ success: true, msg: `${result[0][1]}님 환영합니다.` });
    }
    res.end();
  });
  return;
});


//네이버 로그인시, 자체 서버 DB 저장
app.post("/api/naverlogin", (req, res) => {
  let email = req.body.email;
  let name = req.body.name;

  getRows(`SELECT USERID FROM ACCOUNTS_NAVER WHERE USERNAME = '${name}' AND USERMAIL = '${email}'`).then((result) => {
    if(result.length < 1) {
      getResult(`INSERT INTO ACCOUNTS_NAVER (USERMAIL, USERNAME, USERPASSWORD, USERID) VALUES ('${email}', '${name}', 'naver', 'naver')`).then(result => {
        res.json({success: true, msg: `${name}님 가입완료되었습니다.`});
      })
    }else {
      res.json({success:true, msg: `${name}님 환영합니다.`});
    }
    
  });
})


app.listen(port, () => {
  // 서버 키는 코드
  console.log(`express is running on ${port}`);
});


// 0301 수정