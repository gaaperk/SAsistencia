/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sasistencia;

/**
 *
 * @author final
 */
public class UsuarioActivo {

    /**
     * @return the clvEmp
     */
    public int getClvEmp() {
        return clvEmp;
    }

    /**
     * @param clvEmp the clvEmp to set
     */
    public void setClvEmp(int clvEmp) {
        this.clvEmp = clvEmp;
    }

    /**
     * @return the Usuario
     */
    public String getUsuario() {
        return Usuario;
    }

    /**
     * @param Usuario the Usuario to set
     */
    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    /**
     * @return the ModoAcceso
     */
    public String getModoAcceso() {
        return ModoAcceso;
    }

    /**
     * @param ModoAcceso the ModoAcceso to set
     */
    public void setModoAcceso(String ModoAcceso) {
        this.ModoAcceso = ModoAcceso;
    }

    /**
     * @return the clvUser
     */
    public int getClvUser() {
        return clvUser;
    }

    /**
     * @param clvUser the clvUser to set
     */
    public void setClvUser(int clvUser) {
        this.clvUser = clvUser;
    }
    public String Usuario;
    public String ModoAcceso;
    public int clvUser;
    private int clvEmp;
}
