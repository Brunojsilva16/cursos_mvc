<?php

namespace App\Database;

use PDO;
use PDOException;

// Ao usar "extends PDO", nossa classe se torna um objeto PDO turbinado
class Connection extends PDO
{
    /**
     * Instância estática da conexão (Padrão Singleton)
     */
    private static $instance = null;

    /**
     * Retorna a instância única da conexão com o banco de dados
     * @return self
     */
    public static function getInstance()
    {
        if (self::$instance === null) {
            try {
                // Força o carregamento do arquivo .env
                self::loadEnv();

                // Busca as variáveis do .env ou usa o valor padrão caso não encontre
                $host = self::getEnv('DB_HOST', 'localhost');
                $port = self::getEnv('DB_PORT', '3306');
                $db   = self::getEnv('DB_DATABASE', 'database_courses');
                $user = self::getEnv('DB_USERNAME', 'root');
                $pass = self::getEnv('DB_PASSWORD', '');

                // String de conexão (DSN)
                $dsn = "mysql:host={$host};port={$port};dbname={$db};charset=utf8mb4";

                // Opções do PDO
                $options = [
                    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
                    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
                    PDO::ATTR_EMULATE_PREPARES   => false,
                ];

                // Instancia a própria classe Connection
                self::$instance = new self($dsn, $user, $pass, $options);
                
            } catch (PDOException $e) {
                die("<b>Erro de conexão com o banco de dados:</b> " . $e->getMessage());
            }
        }

        return self::$instance;
    }

    /**
     * ==========================================
     * MÉTODOS AUXILIARES USADOS PELOS MODELS
     * ==========================================
     */

    /**
     * Executa uma consulta SELECT e retorna todos os registros
     * (Isso resolve o erro do CourseModel.php na linha 196)
     */
    public function select(string $sql, array $params = []): array
    {
        $stmt = $this->prepare($sql);
        $stmt->execute($params);
        return $stmt->fetchAll();
    }

    /**
     * Executa uma consulta SELECT e retorna um único registro ou null
     */
    public function selectOne(string $sql, array $params = []): ?array
    {
        $stmt = $this->prepare($sql);
        $stmt->execute($params);
        $result = $stmt->fetch();
        return $result ?: null;
    }

    /**
     * Executa consultas de UPDATE, DELETE (ou INSERTs simples) retornando boolean
     */
    public function execute(string $sql, array $params = []): bool
    {
        $stmt = $this->prepare($sql);
        return $stmt->execute($params);
    }

    /**
     * Executa um INSERT e já retorna o último ID inserido
     */
    public function insertWithLastId(string $sql, array $params = []): string|false
    {
        $this->execute($sql, $params);
        return $this->lastInsertId();
    }

    /**
     * ==========================================
     * MÉTODOS PRIVADOS PARA LEITURA DO .ENV
     * ==========================================
     */

    private static function getEnv($key, $default)
    {
        if (isset($_ENV[$key]) && $_ENV[$key] !== '') {
            return $_ENV[$key];
        }
        $val = getenv($key);
        if ($val !== false && $val !== '') {
            return $val;
        }
        return $default;
    }

    private static function loadEnv()
    {
        $envPath = __DIR__ . '/../../.env';
        
        if (file_exists($envPath)) {
            $lines = file($envPath, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
            
            foreach ($lines as $line) {
                if (strpos(trim($line), '#') === 0) continue;
                
                if (strpos($line, '=') !== false) {
                    list($name, $value) = explode('=', $line, 2);
                    $name = trim($name);
                    $value = trim($value);
                    
                    if (!array_key_exists($name, $_ENV)) {
                        putenv(sprintf('%s=%s', $name, $value));
                        $_ENV[$name] = $value;
                    }
                }
            }
        }
    }
}