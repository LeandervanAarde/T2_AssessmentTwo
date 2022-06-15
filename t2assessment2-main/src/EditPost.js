import React, { useState } from 'react'
import { useEffect } from 'react';
import axios from 'axios';

const EditPost = (props) => {
  const [updatedPost, setupdatedPost] = useState({
    newMessage: props.original,
    id: props.id
  })

  const closeModal = () => {
    props.rerender();
  }

  useEffect(() => {

    document.getElementById("updateText").innerHTML = props.original;

  }, [])

  const changeHandler = (e) => {
    let value = e.target.value;
    setupdatedPost({...updatedPost, newMessage: value});
    console.log(updatedPost);
  }

  const updatePost = (e) => {
    e.preventDefault();
    axios.post('http://localhost:8888/assess/updatePost.php', updatedPost)
    .then((res)=>{
      let data = res.data;
      console.log(data);
      props.upRender(true);
      props.rerender();
    })
    .catch(err=>{
      console.log(err);
    });
  }

  return (
    <div className='modal' >
      <form>
        <h1>Made a Mistake? Edit that shit!</h1>
        <p onClick={closeModal}>Close Modal</p>
        <textarea onChange={changeHandler} id='updateText' placeholder='Edit Post Message' />
        <button type='submit' onClick={updatePost}>Edit this post</button>
      </form>
    </div>
  )
}

export default EditPost
