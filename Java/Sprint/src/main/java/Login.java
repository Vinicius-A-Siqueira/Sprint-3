import java.util.HashMap;
import java.util.Map;

public class Login {
    private Map<String, String> usuarios;

    public Login() {
        usuarios = new HashMap<>();
    }

    public void adicionarUsuario(String usuario, String senha) {
        usuarios.put(usuario, senha);
    }

    public boolean autenticar(String usuario, String senha) {
        return senha.equals(usuarios.get(usuario));
    }
}