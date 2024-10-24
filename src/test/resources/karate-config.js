function fn() {
    var config = {
        dom : 'https://restful-booker.herokuapp.com',
        token : null,
        auth : 'Basic YWRtaW46cGFzc3dvcmQxMjM=',
        bookingID : Math.floor(Math.random() * 100) + 1
    }
    return config;
}

