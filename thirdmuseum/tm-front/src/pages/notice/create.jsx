import React, { Component } from 'react';
import BoardService from './service';
import SubVisual from '../../common/SubVisual';

class NoticeCreate extends Component {
    constructor(props) {
        super(props);

        //폼 양식에서 사용될 파라미터를 정의
        this.state = {
            ntcNo: this.props.match.params.ntcNo, //글 작성인지 수정인지 구분하기위한 파라미터를 선언
            ntcTitle: '',
            ntcContent: ''
        }

        //폼 양식에 값이 입력되면 this.state에 정의 된 변수의 값을 변경하도록 바인드
        //등록버튼을 클릭시 API에 글 작성 리퀘스트를 보내는 함수를 바인드
        this.changentcTitleHandler = this.changentcTitleHandler.bind(this);
        this.changentcContentHandler = this.changentcContentHandler.bind(this);
        this.createBoard = this.createBoard.bind(this);
    }

    //this.setState로 this.state에 정의된 변수에 값을 대입하게 해주는 함수를 선언
    changentcTitleHandler = (event) => {
        this.setState({ntcTitle: event.target.value});
    }

    changentcContentHandler = (event) => {
        this.setState({ntcContent: event.target.value});
    }

    //등록버튼을 클릭시 API에 글쓰기 리퀘스트를 보내는 함수를 선언
    createBoard = (event) => {
        event.preventDefault();
        let board = {
            ntcTitle: this.state.ntcTitle,
            ntcContent: this.state.ntcContent
        };
        console.log("board => "+ JSON.stringify(board));
        if (this.state.ntcNo === '_create') {
            BoardService.createBoard(board).then(res => {
                this.props.history.push('/notice');
                //window.location.replace('/board');
            });
        } else {
            BoardService.updateBoard(this.state.ntcNo, board).then(res => {
                this.props.history.push('/notice');
                //window.location.replace('/board');
            });
        }    
    }

    //취소버튼이 클릭되었을때 목록으로 이동하는 함수를 선언
    cancel() {
        this.props.history.push('/notice');
    }

    //페이지 로딩시 글 작성이면 비어있는 폼을, 글 수정이면 글의 객체 값을 가져와서 바인딩해주도록 수정
    componentDidMount() {
        if (this.state.ntcNo === '_create') {
            return
        } else {
            BoardService.getOneBoard(this.state.ntcNo).then( (res) => {
                let board = res.data;
                console.log("board => "+ JSON.stringify(board));
                
                this.setState({
                        ntcTitle: board.ntcTitle,
                        ntcContent: board.ntcContent
                });
            });
        }
    }

    render() {
        return (
            <>
                <SubVisual name={'공지사항'} imgName={'notice'} />
                <div className="container-xxl">
                    <form>
                        <div className="row">
                            <div className="mb-5">
                                <label className="form-label">제목</label>
                                <input type="text" name="ntcTitle" className="form-control form-control-lg" 
                                value={this.state.ntcTitle} onChange={this.changentcTitleHandler} placeholder="제목을 입력하세요." />
                            </div>
                            <div className="">
                                <label className="form-label">내용</label>
                                <textarea name="ntcContent" className="form-control form-control-lg" 
                                value={this.state.ntcContent} onChange={this.changentcContentHandler} rows="10" placeholder="내용을 입력하세요." />
                            </div>
                        </div>
                        <div className="row justify-content-end pt-4">
                            <div className='col-auto'>
                                <button className="btn btn-dark btn-lg ms-4 mt-4" onClick={this.createBoard}>글 등록하기</button>
                                <button className="btn btn-dark btn-lg ms-4 mt-4" onClick={this.cancel.bind(this)}>취소</button>
                            </div>
                        </div>
                    </form>
                </div>

            </>
        );
    }
}

export default NoticeCreate;