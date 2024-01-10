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
        res.redirect('/inicio_sesion')
    } else {
        req.session.idux = row[0].id_usuario
        req.session.usuario = row[0].usuario
        req.session.nombre = row[0].nombre
        req.session.rol = row[0].tipo
        req.session.correo = row[0].correo;
        req.session.pass = Buffer.from(row[0]['contraseña'],'base64').toString('utf-8')
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

exports.validarSesion = async (req, res) => {
    res.send(req.session);
};

exports.data = async (req, res) => {
    const sessionData = req.session;
    const id = sessionData.idux;

    try {
        const [rows] = await conn.query("SELECT id_actividad, nombre, descripcion, estatus, fechaC, fechaF FROM actividades WHERE id_usuario = ?", [id]);

        // Formatear los datos para el DataTable
        const dataFormatted = rows.map(row => {
            return [
                row.id_actividad,
                row.nombre,
                row.descripcion,
                row.estatus,
                row.fechaC,
                row.fechaF
            ];
        });

        res.json({ data: dataFormatted }); // Enviar los datos formateados como respuesta JSON
    } catch (error) {
        console.error("Error al obtener datos de actividades:", error);
        res.status(500).json({ error: "Error al obtener datos de actividades" });
    }
};

exports.conteo = async (req, res) => {
    const sessionData = req.session;
    const id = sessionData.idux;

    try {
        const [completedCount] = await conn.query("SELECT COUNT(id_actividad) as conteo FROM actividades WHERE id_usuario = ? AND estatus = 'completada'", [id]);
        const [pendingCount] = await conn.query("SELECT COUNT(id_actividad) as conteo FROM actividades WHERE id_usuario = ? AND estatus = 'sin completar'", [id]);

        const dataFormatted = [
            { label: 'Completadas', count: completedCount[0].conteo || 0 },
            { label: 'Sin Completar', count: pendingCount[0].conteo || 0 }
            // Agrega más objetos para otros estados
        ];

        res.json(dataFormatted);
    } catch (error) {
        console.error("Error al obtener conteos de actividades:", error);
        res.status(500).json({ error: "Error al obtener conteos de actividades" });
    }
};

exports.conteo2 = async (req, res) => {
    const sessionData = req.session;
    const id = sessionData.idux;

    try {
        const [completedCount] = await conn.query("SELECT COUNT(id_actividad) as conteo FROM actividades WHERE id_usuario = ? AND estatus = 'vencida'", [id]);
        const [pendingCount] = await conn.query("SELECT COUNT(id_actividad) as conteo FROM actividades WHERE id_usuario = ? AND estatus = 'sin fecha'", [id]);

        const dataFormatted = [
            { label: 'Vencidas', count: completedCount[0].conteo || 0 },
            { label: 'Sin Fecha de Vencimiento', count: pendingCount[0].conteo || 0 }
            // Agrega más objetos para otros estados
        ];

        res.json(dataFormatted);
    } catch (error) {
        console.error("Error al obtener conteos de actividades:", error);
        res.status(500).json({ error: "Error al obtener conteos de actividades" });
    }
};

