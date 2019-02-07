package com.uniovi.sdi;

public class Producto {
	private String nombre;
	private String imagen;
	private float precio;

	public Producto(String nombre, String imagen, float precio) {
		this.nombre = nombre;
		this.imagen = imagen;
		this.precio = precio;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getImagen() {
		return imagen;
	}

	public void setImagen(String imagen) {
		this.imagen = imagen;
	}

	public float getPrecio() {
		return precio;
	}

	public void setPrecio(float precio) {
		this.precio = precio;
	}
}
