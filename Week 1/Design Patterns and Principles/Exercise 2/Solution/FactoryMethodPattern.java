public class FactoryMethodPattern {
    public static void main(String[] args) {
        DocFactory wordFac = new WordFactory();
        Document wordDoc = wordFac.createDocument();
        wordDoc.open();

        DocFactory pdfFac = new PDFFactory();
        Document pdfDoc = pdfFac.createDocument();
        pdfDoc.open();

        DocFactory excelFac = new ExcelFactory();
        Document excelDoc = excelFac.createDocument();
        excelDoc.open();
    }
}