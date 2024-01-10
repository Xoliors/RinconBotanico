const conn = require('../controllers/db');

exports.RegistrarA = async (req, res) =>{
    const nombre = req.body.nombre;
    const descripcion = req.body.descripcion;
    const estatus = req.body.estatus;
    const fechaCA = req.body.fechaCA;
    const fechaFA = req.body.fechaFA;
    const idux = req.body.idux;
    const [row] = await conn.query("INSERT INTO actividades(nombre, descripcion, estatus, fechaC, fechaF, id_usuario) VALUES (?,?,?,?,?,?)", [nombre, descripcion, estatus, fechaCA, fechaFA, idux])
    console.log("Inserta datos: ", row, row['affectedRows'])
    const status = row['affectedRows'] > 0

    res.send({
        status: status
    })
}
