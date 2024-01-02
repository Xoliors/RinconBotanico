const { response } = require('express');
const conn = require('../controllers/db');
/* Usuarios*/
exports.Usuarios = async(req, res) => {
    const [usuarios] = await conn.query("select id_usuario,nombre,usuario,tipo,correo,contraseña from usuarios")
    const data = []

    if(usuarios.length > 0) {
        for( const i in usuarios ) {
            data.push([
                usuarios[i]['id_usuario'],
                usuarios[i]['nombre'],
                usuarios[i]['usuario'],
                usuarios[i]['tipo'],
                usuarios[i]['correo'],
                Buffer.from(usuarios[i]['contraseña'],'base64').toString('utf-8'),
                `<a  class="button button-3d button-mini button-rounded modal-id-act-u" data-bs-toggle="modal" data-bs-target="#usuarioEditar" style="background-color: #206b34;" idux="${usuarios[i]['id_usuario']}" actax="${usuarios[i]['nombre']}" idusx="${usuarios[i]['usuario']}" llux="${usuarios[i]['tipo']}" correoux= "${usuarios[i]['correo']}" coux="${Buffer.from(usuarios[i]['contraseña'],'base64').toString('utf-8')}" >Editar</a>
                <a  class="button button-3d button-mini button-rounded delete" data-idx="${usuarios[i]['id_usuario']}" style="background-color: rgba(255, 0, 0, 0.514); color: white;">Borrar</a>`
            ])
        }
    }

    res.send(data)
}
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
    const id = req.body.idux;
    const nombre = req.body.nombre;
    const usuario = req.body.usuario;
    const roll = req.body.rol;
    const correo = req.body.correo;
    const pass = Buffer.from(req.body.pass,'utf-8').toString('base64')
    const [row] = await conn.query("UPDATE usuarios SET nombre = ?, usuario = ?, tipo = ?, correo = ?, contraseña = ? WHERE id_usuario = ?", [nombre, usuario, roll, correo, pass,id])
    const status = row['affectedRows'] > 0
    
    res.send({
        status: status
    })
}
exports.EliminarU = async (req, res) =>{
    const {action} = req.body
    if (action == 'delete') {
        const id = req.body.idux;
        const [row] = await conn.query("DELETE FROM usuarios WHERE id_usuario = ?", [id])
        const status = row['affectedRows'] > 0

        if(status) {
            res.send({
                'mensaje': 'Usuario Eliminado '
            })
        } else {
            res.send({
                'mensaje': 'Ocurrio un error al elimnar el usuario'
            })
        }
    }
}
/*Usuarios */








