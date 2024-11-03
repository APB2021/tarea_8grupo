package tarea_8grupo;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.TransformerFactoryConfigurationError;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

public class ConversorXML {

	public void generaHTML() {

		String ficheroEstilosXSL = "Alumnos.xsl";
		String ficheroAlumnosXML = "Alumnos.xml";
		File ficheroHTML = new File("TablaHTML.html");

		FileOutputStream fos = null;

		try {
			fos = new FileOutputStream(ficheroHTML);

			Source estilos = new StreamSource(ficheroEstilosXSL);
			Source datos = new StreamSource(ficheroAlumnosXML);

			Result result = new StreamResult(fos);

			Transformer transformer = TransformerFactory.newInstance().newTransformer(estilos);
			transformer.transform(datos, result);

		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
		} catch (TransformerFactoryConfigurationError e) {
			e.printStackTrace();
		} catch (TransformerException e) {
			e.printStackTrace();
		} finally {
			try {
				fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}