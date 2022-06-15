import React, {useState} from 'react';
import EditPost from './EditPost';
import axios from "axios"

export const Postitem = (props) => {

    const [openModal, setOpenModal] = useState();
    const openTheModal = () =>{

        setOpenModal(<EditPost upRender={props.renderer} rerender={setOpenModal} original={props.message} id={props.uniqueId}/>)
    }
    const deletePost = () =>{
        if(window.confirm("Are you sure you want to delete this post forever?") === true){
            let postId = {id: props.uniqueId};
            axios.post('http://localhost:8888/assess/deletePost.php', postId)
            .then((res) =>{
                let data = res.data;
                console.log(data);
                props.rerender(true); 
            })
            .catch(err =>{
                console.log(err);
            })
        } else{
            console.log("post did not delete");
        }
    }
    return (
        <div>
            {openModal}
            <div className="post_item" id={props.uniqueId}>
                <h3 className='userPost'>{props.userpost}</h3>
                <h5 className='dateTime'>{props.date}</h5>
                <p className='mssg'>{props.message}</p>
                <div className="postUi">
                    <div className="edit" onClick={openTheModal}>Edit Post</div>
                    <div className="delete" onClick={deletePost}>Delete Post</div>
                </div>
            </div>
        </div>
    );
};

