package projetoescola.model;

import java.sql.Connection;
import org.postgresql.ds.PGPoolingDataSource;

public class ConnectionManager {

    private PGPoolingDataSource dataSource;

    public Connection getConnection() throws Exception {
        Connection conn = dataSource.getConnection();
        conn.setAutoCommit(false);
        return conn;
    }
    //Inicio Singleton

    private ConnectionManager() {
        dataSource = new PGPoolingDataSource();
        dataSource.setDataSourceName("escola");
        dataSource.setServerName("localhost");
        dataSource.setPortNumber(5432);
        dataSource.setDatabaseName("escola");
        dataSource.setUser("postgres");
        dataSource.setPassword("postgres");
        dataSource.setMaxConnections(100);
        dataSource.setInitialConnections(10);
    }
    
    private static ConnectionManager instance;

    public static ConnectionManager getInstance() {
        if (instance == null) {
            instance = new ConnectionManager();
        }
        return instance;
    }
    //Fim Singleton
}