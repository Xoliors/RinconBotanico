const conn = require('../controllers/db');
const express = require('express');
const Buffer = require('buffer').Buffer;

const router = express.Router()


exports.LoginUsuarios = async (req,res) => {
    const {usuario , contra} = req.body
    const buff = Buffer.from(contra,'utf-8').toString('base64')
    const [row] = await conn.query("select * from usuarios where usuario = ? AND contraseña = ?", [usuario, buff])
    
    if(row.length == 0) {
        console.log("Error: Usuario o Contraseña incorrecta")
        res.redirect('/')
    } else {
        req.session.usuario = row[0].usuario
        req.session.nombre = row[0].nombre
        req.session.rol = row[0].tipo
        console.log(req.session.rol)
        res.redirect('/home')
    }
}

exports.LogOutUsuarios = (req, res) => {
    //console.log('Entra logout');
    req.session.destroy(function(err) {
        if (err) {
            console.error(err);
        } else {
            res.clearCookie(req.session); // eliminar la cookie de sesión
            //console.log('session',req.session)
            res.redirect('/');
            // redirigir al usuario a la página de inicio de sesión
        }
    });
}

exports.validarSesion = (req,res) => {
    res.send(req.session)
}