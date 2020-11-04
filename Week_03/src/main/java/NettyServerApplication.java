import com.yjc.inbound.HttpInboundServer;

import java.util.ArrayList;
import java.util.List;

public class NettyServerApplication {
    
    public final static String GATEWAY_NAME = "NIOGateway";
    public final static String GATEWAY_VERSION = "1.0.0";
    
    public static void main(String[] args) {

        //创建多个代理
        List<String> proxyServerList = new ArrayList<>();

        proxyServerList.add(System.getProperty("proxyServer","http://localhost:8081"));
        proxyServerList.add(System.getProperty("proxyServer","http://localhost:8082"));
        proxyServerList.add(System.getProperty("proxyServer","http://localhost:8083"));
        proxyServerList.add(System.getProperty("proxyServer","http://localhost:8084"));



        String proxyPort = System.getProperty("proxyPort","8888");
        
          //  http://localhost:8888/api/hello  ==> gateway API
          //  http://localhost:8088/api/hello  ==> backend service
    
        int port = Integer.parseInt(proxyPort);
        System.out.println(GATEWAY_NAME + " " + GATEWAY_VERSION +" starting...");
        HttpInboundServer server = new HttpInboundServer(port, proxyServerList);
        System.out.println(GATEWAY_NAME + " " + GATEWAY_VERSION +" started at http://localhost:" + port + " for server:" + proxyServerList);
        try {
            server.run();
        }catch (Exception ex){
            ex.printStackTrace();
        }
    }
}
