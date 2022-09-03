/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function updateMedicineQuantity(obj, id){
    fetch('/createMedicalBill', {
        method:'put',
        body: JSON.stringify({
            'id':id,
            'quantity':obj
        }),
        headers:{
            'Content-Type':'application/json'
        }
    }).then(res => res.json()).then(data =>{
        console.info(data);
    });
}

