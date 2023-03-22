import React, { Component } from 'react';
import BoardService from './service';
import SubVisual from '../../common/SubVisual';

const loginType = localStorage.getItem("login_type");
console.log("loginType", loginType);

class NoticeRead extends Component {
    constructor(props) {
        super(props);

        this.state = { 
            //this.state에 글 상세보기에 사용될 파라미터 정의
            ntcNo: this.props.match.params.ntcNo,
            board: {}
        }

        this.goToUpdate = this.goToUpdate.bind(this);
    }

    //페이지가 로딩될때 API와 통신하여 글 객체를 가져온다.
    componentDidMount() {
        BoardService.getOneBoard(this.state.ntcNo).then( res => {
            this.setState({board: res.data});
            console.log("get result => "+ JSON.stringify(res.data));
        });
    }

    //글 목록으로 이동하는 함수를 정의
    goToList() {
        this.props.history.push('/notice');
        //window.location.replace('/board');
    }

    //글 수정하는 함수
    goToUpdate = (event) => {
        event.preventDefault();
        this.props.history.push(`/create-board/${this.state.ntcNo}`);
        //window.location.replace(`/create-board/${this.state.ntcNo}`);
    }

    //글삭제 함수 추가. alert창을 띄워서 삭제할지를 결정.
    // alert창에서 확인 버튼이 클릭되면, API와 통신하여 글을 삭제한후 성공하면 글 목록으로 이동
    deleteView = async function () {
        if(window.confirm("정말로 글을 삭제하시겠습니까?\n삭제된 글은 복구 할 수 없습니다.")) {
            BoardService.deleteBoard(this.state.ntcNo).then( res => {
                console.log("delete result => "+ JSON.stringify(res));
                if (res.status === 200) {
                    this.props.history.push('/notice');
                    //window.location.replace('/board');
                } else {
                    alert("글 삭제가 실패했습니다.");
                }
            });

        }
    }

    render() {
        return (
            <>
            <SubVisual name={'공지사항'} imgName={'notice'} />
            <div className='container-xxl'>
                <table className="table">
                    <thead>
                        <tr>
                            <th className='h5 pb-4'>{this.state.board.ntcTitle}</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td className='py-5' style={{whiteSpace:'pre-line'}}>{this.state.board.ntcContent}</td>
                        </tr>
                    </tbody>
                </table>
                <div className="row justify-content-end pt-4">
                    <div className='col-auto'>
                        {
                            loginType === 'admin' && <button className="btn btn-dark btn-lg ms-4 mt-4" onClick={() => this.deleteView()}>글 삭제하기</button>
                        }   
                        {
                            loginType === 'admin' && <button className="btn btn-dark btn-lg ms-4 mt-4" onClick={this.goToUpdate}>글 수정하기</button>
                        }   
                        <button className="btn btn-dark btn-lg ms-4 mt-4" onClick={this.goToList.bind(this)}>목록으로</button>
                    </div>
                </div>
            </div>
            </>
        );
    }
}

export default NoticeRead;