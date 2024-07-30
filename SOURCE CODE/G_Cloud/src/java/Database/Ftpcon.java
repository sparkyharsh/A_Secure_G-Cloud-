/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Database;


/**
 *
 * @author java1
 */
import java.io.File;
import java.io.FileInputStream;
import org.apache.commons.net.ftp.FTPClient;

public class Ftpcon {

    FTPClient client = new FTPClient();
    FileInputStream fis = null;
    boolean status;

    /**
     *
     * @param file
     * @return
     */
    public boolean upload(File file) {
        try {
            System.out.println("Check------------------------------------->1");
            client.connect("ftp.drivehq.com");
            client.login("Harshat11", "H@rshat11");
            client.enterLocalPassiveMode();
            fis = new FileInputStream(file);
            System.out.println("Check------------------------------------->2");
            status = client.storeFile("/cloud/" + file.getName(), fis);
           // status = client.storeFile("/ccloud/" + file.getName(), fis);
            
            //file path of drive storage
            client.logout();
            fis.close();

        } catch (Exception e) {
            System.out.println(e);
        }
        if (true) {
            System.out.println("success");
            return true;
        } else {
            System.out.println("failed");
            return false;

        }

    }
}
