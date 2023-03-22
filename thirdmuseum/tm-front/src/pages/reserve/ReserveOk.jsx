import React, { Component } from "react";
import SubVisual from '../../common/SubVisual';

class Reserve extends Component {
    //메인 이동 버튼
    cancel() {
        this.props.history.push('/');
    }
    
    render() {
        return(
            <>
            <SubVisual name={'관람예약'} imgName={'reserve'} />
            <div className='container-xxl'>
                <div className="text-center">
                    <p className="fs-1 fw-bold py-4 my-5">예약신청이 정상처리되었습니다.</p>
                    <p className="fs-2">관람예약 취소 및 문의는 1577-0123으로 연락하시기 바랍니다.</p>
                </div>
                <div className="row justify-content-center pt-4 mt-5">
                    <div className='col-auto'>
                        <button className="btn btn-dark btn-lg mt-4" onClick={this.cancel.bind(this)}>메인으로</button>
                    </div>
                </div>
            </div>
            </>
        )
    }
}
export default Reserve;