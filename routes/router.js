//imports
const express = require('express');//importa el servidor
const router = express.Router();//monta las rutas
const conn = require('../controllers/db');//conecta a la base de datos MYSQL
const json2csv = require('json2csv').parse
const fs = require('fs')
const usuarios = require('../models/usuarios')
const manejo = require('../controllers/auth')
const registro = require('../controllers/registro')
const actu = require('../controllers/actualizar')
const RA = require('../controllers/registroActividad')

const session = require('express-session');

router.use(session({
    secret: '6FSRSDATEMRGYEAJLPCAWTUVL4SBHCPD',
    resave: false,
    saveUninitialized: true,
    cookie: {
        maxAge: 3600000
    }
}));

//redirige a la página de inicio de sesión
router.get('/inicio_sesion', (req,res)=>{
    res.render('pages/');
});

router.get('/', (req,res)=>{
    res.render('pages/principal');
});

router.get('/home', (req,res)=>{
    if(req.session.rol=='admin'){
        res.render('pages/homeAdmin')
    }else{
        res.render('pages/home')
    }
})

//Páginas para los usuarios sin registro
router.get('/CatalogoPrincipal', (req,res)=>{
    res.render('pages/cataP')
})

router.get('/Servicios', (req,res)=>{
    res.render('pages/servicios')
})

router.get('/registro',(req,res) => {
    res.render('pages/registro')
})

//Paginas del usuario con registro y para registrarse
router.get('/catalogo', (req,res)=>{
    //console.log(req.session)
    res.render('pages/catalogo')
})

router.get('/creacion',(req,res) => {
    res.render('pages/creacionUsuarios')
})

router.get('/Dashboard',(req,res) => {
    const usuarioSesion = req.session;

    res.render('pages/dashboard', { usuarioSesion })
})

router.get('/Perfil',(req,res) => {
     // Obtener la información de la sesión (supongamos que está almacenada en req.session.user)
     const usuarioSesion = req.session; // Cambia esto por el lugar donde tienes almacenada la información de la sesión
    
     // Renderizar la plantilla perfil.ejs y pasar la información de la sesión
     res.render('pages/perfil', { usuarioSesion });
})

// actualiza perfil
router.post('/Actualizacion_informacion', actu.ActualizarU)
router.get('/seleccion', actu.Usuarios)

router.post('/registroA', RA.RegistrarA)
///////////     Catalogo de plantas     //////////
router.get('/Plantas_segun_su_ciclo_de_vida',(req,res) => {
    res.render('pages/plantas-cv')
})

router.get('/Plantas_segun_su_habitad',(req,res) => {
    res.render('pages/plantas-h')
})

router.get('/Plantas_segun_su_utilidad',(req,res) => {
    res.render('pages/plantas-u')
})

router.get('/Plantas_segun_su_estructura',(req,res) => {
    res.render('pages/plantas-e')
})

router.get('/Plantas_segun_su_reproduccion',(req,res) => {
    res.render('pages/plantas-r')
})

///////////     FIN Catalogo de plantas     //////////

router.post('/registro', registro.RegistrarU)
router.post('/actualizacion', registro.RegistrarU)


router.post('/login',usuarios.LoginUsuarios)
router.get('/logout',usuarios.LogOutUsuarios)
router.get('/validar', usuarios.validarSesion)
router.use('/Perfil', usuarios.validarSesion)
router.get('/data', usuarios.data)
router.get('/conteo', usuarios.conteo)
router.get('/conteos', usuarios.conteo2)

router.get('/tableUsuarios',manejo.Usuarios);
router.post('/registrarU', manejo.RegistrarU);
router.post('/actualizarU', manejo.ActualizarU);
router.post('/eliminarU', manejo.EliminarU);

module.exports = router;
