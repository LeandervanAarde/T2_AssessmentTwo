import React, { useEffect, useRef, useState } from "react";
import { Postitem } from "./Postitem";
import EditPost from "./EditPost";
import axios from "axios";
function App() {

  sessionStorage.setItem('activeUser', 'Lele');
  const[postMessage, setPostMessage] = useState({
    message: '',
    user: sessionStorage.getItem('activeUser')
  });
  const [userId, setUserId] = useState({
      activeUser: sessionStorage.getItem("activeUser"),
  });
  const [posts, setPosts] = useState();
  const [renderPost, setRenderPost] = useState();
  const messageVal = useRef();

  useEffect(() =>{
    axios.post('http://localhost:8888/assess/readUserPost.php', userId)
    .then((res) =>{
      let data = res.data;
 
      let renderPost = data.map((e)=>(<Postitem 
        {...e}
        uniqueId ={e.id}
       renderer={setRenderPost} 
       key = {e.id}
      />));
      setPosts(renderPost);
      setRenderPost(false);
   
    })
    .catch((err) =>{
        console.log(err);
    })
  }, [renderPost]);

  const getValue = () =>{
      let message = messageVal.current.value;
      setPostMessage({
        ...postMessage, message: message
      })  
      
  }

  const addMessage = (e) =>{
    let message = postMessage;
      e.preventDefault();
   
      axios.post('http://localhost:8888/assess/addPost.php', message)
      .then(res =>{
        let data = res.data;
        console.log(res);
        setRenderPost(true);
        document.querySelector('.messageHolder').value = '';
      })
      .catch(err =>{
        console.log(err);
      }); 
  }

  return (
    <div className="App">
      <div className="left">
        <h1>Your Post Timeline</h1>
        <p>Populate the area below with posts from the form to the right...</p>
          {posts}
        
      </div>
      <div className="right">
        <form>
          <h3>Add A New Post</h3>
          <textarea onChange={getValue} ref={messageVal} className='messageHolder' placeholder="your post here" />
          <button type="submit" onClick={addMessage} >Add Your New Post</button>
        </form>
      </div>
      
    </div>
  );
}

export default App;
