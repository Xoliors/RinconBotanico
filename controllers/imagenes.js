const conn = require('../controllers/db');
const express = require('express');

const router = express.Router()

exports.imagenes = async (req, res) => {
    try {
        const [rows] = await conn.query("SELECT imagen FROM imagenes WHERE id_planta BETWEEN 1 AND 10");
        
        // Extrayendo las URLs de la respuesta y formando un array
        const urls = rows.map(row => row.url_column);
        
        res.status(200).json(urls);
    } catch (err) {
        console.error("Error al obtener las imágenes:", err);
        res.status(500).json({ error: "Error al obtener las imágenes" });
    }
};
