const { response } = require('express');
const conn = require('../controllers/db');

exports.RegistrarU = async (req, res) =>{
    const nombre = req.body.nombre;
    const usuario = req.body.usuario;
    const roll = req.body.rol;
    const correo = req.body.correo;
    const pass = Buffer.from(req.body.pass,'utf-8').toString('base64')
    const [row] = await conn.query("INSERT INTO usuarios(nombre,usuario,tipo,correo,contraseña) VALUES (?,?,?,?,?)", [nombre, usuario, roll, correo, pass])
    console.log("Inserta datos: ", row, row['affectedRows'])
    const status = row['affectedRows'] > 0

    res.send({
        status: status
    })
}
exports.ActualizarU = async (req, res) =>{
    const [row] = await conn.query("UPDATE usuarios SET nombre = ?, usuario = ?, tipo = ?, correo= ?, contraseña = ? WHERE id = ?", [nombre, usuario, roll, pass])
    const status = row['affectedRows'] > 0
    
    res.send({
        status: status
    })
}









