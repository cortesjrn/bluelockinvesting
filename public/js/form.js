const username = document.querySelector('.username');
const password = document.querySelector('.password');
const submitBtn = document.querySelector('.submit-btn');

window.onload = () =>{
    if(sessionStorage.username){
      location.href = '/';
    }
  }

if(document.querySelector('.heading').textContent==="login"){
    submitBtn.addEventListener('click',()=>{
        fetch('/login-user', {
            method:'post',
            headers: new Headers({'Content-Type': 'application/json'}),
            body: JSON.stringify({
                username: username.value,
                password:password.value
            })
        })
        .then(res=>res.json())
        .then(data => {
            validateData(data);
        })
    })
} else{
    submitBtn.addEventListener('click',()=>{
        if(password.value.length<8){
            alertBox("password too short")
        }
        else{
            fetch('/register-user', {
                method:'post',
                headers: new Headers({'Content-Type': 'application/json'}),
                body: JSON.stringify({
                    username: username.value,
                    password:password.value
                })
            })
            .then(res=>res.json())
            .then(data => {
                if(data.username){
                    location.href = '/login'
                } else{
                    alertBox(data);
                }
            })
        }
    })
}

const validateData = (data)=>{
    sessionStorage.setItem("token",data[1].accessToken);
    if(typeof data==='object'){
        data=data[0];
    }
    if(!data.username){
        alertBox(data);
    } else{
        const date = new Date();
        sessionStorage.startTime = date.getTime();
        sessionStorage.username = data.username;
        sessionStorage.money = data.money;
        sessionStorage.kaiser = data.kaiser;
        sessionStorage.ness = data.ness;
        sessionStorage.isagi = data.isagi;
        sessionStorage.kurona = data.kurona;
        sessionStorage.kunigami = data.kunigami;
        sessionStorage.gagamaru = data.gagamaru;
        sessionStorage.yukimiya = data.yukimiya;
        sessionStorage.raichi = data.raichi;
        sessionStorage.hiori = data.hiori;
        sessionStorage.igarashi = data.igarashi;
        sessionStorage.kiyora = data.kiyora;
        sessionStorage.bachira = data.bachira;
        sessionStorage.otoya = data.otoya;
        sessionStorage.reo = data.reo;
        sessionStorage.chigiri=data.chigiri;
        sessionStorage.nagi=data.nagi;
        sessionStorage.charles=data.charles;
        sessionStorage.chapa=data.chapa;
        sessionStorage.rin=data.rin;
        sessionStorage.karasu=data.karasu;
        sessionStorage.shidou=data.shidou;
        sessionStorage.tokimitsu = data.tokimitsu;
        sessionStorage.zantetsu = data.zantetsu;
        sessionStorage.nanase = data.nanase;
        sessionStorage.lorenzo = data.lorenzo;
        sessionStorage.barou = data.barou;
        sessionStorage.sendou = data.sendou;
        sessionStorage.niko = data.niko;
        sessionStorage.aryu = data.aryu;
        sessionStorage.aiku = data.aiku;
        //sessionStorage = JSON.parse(data)
        location.href = '/';
    }
}

const alertBox = (data) =>{
    const alertContainer = document.querySelector('.alert-box');
    const alertMsg = document.querySelector('.alert')
    alertMsg.innerHTML = data;

    alertContainer.style.top = `5%`;
    setTimeout(() =>{
        alertContainer.style.top = null;
    },5000)
}