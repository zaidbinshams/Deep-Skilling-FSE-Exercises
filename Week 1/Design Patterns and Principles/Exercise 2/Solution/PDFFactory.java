public class PDFFactory extends DocFactory {
    public Document createDocument() {
        return new PDFDoc();
    }
}