import React from 'react';

function SubVisual(props) {
    const src = `/resource/common/${props.imgName}_visual.png`;
    return (
        <>
        <div className="subvisual text-center">
            <h1 className='display-1'>{props.name}</h1>
            {
                `${props.imgName}` === ''
                 ? ''
                 : <img src={src} className="ratio" alt={props.name} /> 
            }
        </div>
        </>
    );
}

export default SubVisual;