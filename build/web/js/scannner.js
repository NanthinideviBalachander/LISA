///* 
// * To change this license header, choose License Headers in Project Properties.
// * To change this template file, choose Tools | Templates
// * and open the template in the editor.
// */
//
//
//let scanner = new Instascan.Scanner({ video: document.getElementById('preview') });
//      scanner.addListener('scan', function (content) {
//        alert(content);
//      });
//      Instascan.Camera.getCameras().then(function (cameras) {
//        if (cameras.length > 0) {
//          scanner.start(cameras[0]);
//        } else {
//          console.error('No cameras found.');
//        }
//      }).catch(function (e) {
//        console.error(e);
//      });