public class Main {
    import java.nio.file.*;

public class CheckSetReadOnly {
    public static void main(String[] args) {
        Path path = Paths.get("path_to_your_file.xml");

        // 检查文件是否是只读的
        if (Files.isReadOnly(path)) {
            try {
                // 更改文件的只读状态
                Files.setReadOnly(path, false);
                System.out.println("File is no longer read-only.");
            } catch (IOException e) {
                System.err.println("Failed to change file's read-only status.");
                e.printStackTrace();
            }
        } else {
            System.out.println("File is not read-only.");
        }
    }
}
}
