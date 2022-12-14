function createCookie(name) {
    const date = new Date();
    date.setDate(date.getDate() + 1); //수명을 하루로 지정.
    let cookie = '';
    cookie += `${name}=${'true'};`; //세미콜론을 반드시 찍으세요.
    cookie += 'expired=' + date.toUTCString();
    document.cookie = cookie;
}

function getCookie(name) {
    const cookies = document.cookie.split(';');

    for(let c of cookies) {
        if(c.search(name) !== -1) { //쿠키가 발견이 됬다면
            return true;
        }
    }
}