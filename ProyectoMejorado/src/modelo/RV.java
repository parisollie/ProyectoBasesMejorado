
package modelo;

public class RV {
    int reg; 
    int cod;
    int idv;
    Double pv;
    int can;
    double tot;
    
    public RV() {
    }

    public RV(int reg, int cod, int idv, Double pv, int can, double tot) {
        this.reg = reg;
        this.cod = cod;
        this.idv = idv;
        this.pv = pv;
        this.can = can;
        this.tot = tot;
    }
    
    
    public int getReg() {
        return reg;
    }

    public void setReg(int reg) {
        this.reg = reg;
    }

    public int getCod() {
        return cod;
    }

    public void setCod(int cod) {
        this.cod = cod;
    }

    public int getIdv() {
        return idv;
    }

    public void setIdv(int idv) {
        this.idv = idv;
    }

    public Double getPv() {
        return pv;
    }

    public void setPv(Double pv) {
        this.pv = pv;
    }

    public int getCan() {
        return can;
    }

    public void setCan(int can) {
        this.can = can;
    }

    public double getTot() {
        return tot;
    }

    public void setTot(double tot) {
        this.tot = tot;
    }
    
}
