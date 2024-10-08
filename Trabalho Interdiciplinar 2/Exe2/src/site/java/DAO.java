import java.sql.*;

public class DAO {
    private Connection conexao;

    public DAO(){
        conexao = null;
    }

    public boolean conectar(){
        String driverName = "org.postgresql.Driver";
        String serverName = "PostgreSQL 16";
        String mydatabase = "Exe2";
        int porta = 5432;
        String url = "jdbc:postgresql://" + serverName + ":" + porta + "/" + mydatabase;
        String username = "postgres";
        String password = "tlou-tw2";
        boolean status = false;

        try {
            Class.forName(driverName);
            conexao = DriverManager.getConnection(url, username, password);
            status = (conexao == null);
            System.out.println("Conexão efetuada com o banco de dados!");
        } catch (ClassNotFoundException e) {
            System.err.println("Conexão NÃO efetuada com o banco de dados! " + e.getMessage());
        } catch (SQLException e) {
            System.err.println("Conexão NÃO efetuada com o banco de dados! " + e.getMessage());
        }

        return status;
    }

    public boolean close(){
        boolean status = false;
        
        try{
            conexao.close();
            status = true;
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return status;
    }

    // public boolean inserirUsuario(Usuario usuario){
    //     boolean status = false;
    //     try {
    //         Statement st = conexao.createStatement();
    //         st.executeUpdate("INSERT INTO usuario (id, nome, email, senha) "
    //                        + "VALUES ("+usuario.getId()+ ", '" + usuario.getNome() + "', '"  
    //                        + usuario.getEmail() + "', '" + usuario.getSenha() + "');");
    //         st.close();
    //         status = true;
    //     } catch (SQLException e) {
    //         throw new RuntimeException(e);
    //     }
    //     return status;
    // }

    public boolean inserirUsuario(Usuario usuario){
        boolean status = false;
        Statement st = null;
        try {
            if(conexao == null || conexao.isClosed()) {
                conexao = DriverManager.getConnection(url, usuario, senha)
            }
            st = conexao.createStatement();
            st.executeUpdate("INSERT INTO usuario (id, nome, email, senha) "
                           + "VALUES ("+usuario.getId()+ ", '" + usuario.getNome() + "', '"  
                           + usuario.getEmail() + "', '" + usuario.getSenha() + "');");
            status = true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            if(st != null) {
                try {
                    st.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return status;
    }

    public boolean atualizarUsuario(Usuario usuario){
        boolean status = false;
        try {
            Statement st = conexao.createStatement();
            String sql = "UPDATE usuario SET nome = '" + usuario.getNome() + "', email = '"  
                       + usuario.getEmail() + "', senha = '" + usuario.getSenha() + "'"
                       + " WHERE id = " + usuario.getId();
            st.executeUpdate(sql);
            st.close();
            status = true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return status;
    }

    public boolean excluirUsuario(int id){
        boolean status = false;
        try {
            Statement st = conexao.createStatement();
            st.executeUpdate("DELETE FROM usuario WHERE id = " + id);
            st.close();
            status = true;
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return status;
    }

    public Usuario[] getUsuarios(){
        Usuario[] usuarios = null;

        try{
            Statement st = conexao.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = st.executeQuery("SELECT * FROM usuario");
            if(rs.next()){
                rs.last();
                usuarios = new Usuario[rs.getRow()];
                rs.beforeFirst();
                for(int i = 0; rs.next(); i++){
                    usuarios[i] = new Usuario(rs.getInt("id"), rs.getString("nome"), rs.getString("email"), rs.getString("senha"));
                }
            }
            st.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return usuarios;
    }

    public Usuario[] getUsuariosNome(String nome){
        Usuario[] usuarios = null;

        try{
            Statement st = conexao.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            ResultSet rs = st.executeQuery("SELECT * FROM usuario WHERE nome LIKE '" + nome + "%'");
            if(rs.next()){
                rs.last();
                usuarios = new Usuario[rs.getRow()];
                rs.beforeFirst();
                for(int i = 0; rs.next(); i++){
                    usuarios[i] = new Usuario(rs.getInt("id"), rs.getString("nome"), rs.getString("email"), rs.getString("senha"));
                }
            }
            st.close();
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        return usuarios;
    }
}