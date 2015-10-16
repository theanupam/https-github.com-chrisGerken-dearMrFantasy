package temp;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import javax.xml.transform.TransformerException;

import org.gramar.exception.GramarException;
import org.gramar.model.DocumentHelper;
import org.w3c.dom.Document;

public class Driver {

	public static void main(String[] args) {

		try {
			String file = "/home/chrisgerken/workspaces/indigo/yield/ModcoYield/columns.txt";
			FileInputStream fis = new FileInputStream(file);
			Document doc = fromTsv(fis);

			file = "/home/chrisgerken/workspaces/indigo/yield/ModcoYield/columns.xml";
			FileWriter fw = new FileWriter(file);
			fw.append(DocumentHelper.asString(doc));
			fw.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public static Document fromTsv(InputStream is) throws GramarException {

		String xml = null;
		
		try {
			StringBuffer sb = new StringBuffer();
			sb.append("<root>\n");
			
			BufferedReader br = new BufferedReader(new InputStreamReader(is));
			String row = br.readLine();
			row = row.substring(1);
			String hdr[] = row.split("\t");
			
			row = br.readLine();
			while (row!=null) {
				String col[] = row.split("\t");
				sb.append("<row");
				for (int i = 0; i < col.length; i++) {
					sb.append("  "+hdr[i].trim()+"=\""+col[i].trim()+"\"");
				}
				sb.append("/>\n");
				row = br.readLine();
			}
			is.close();
			br.close();
			
			sb.append("</root>");
			xml = sb.toString();
		} catch (IOException e) {
			throw new GramarException("Error during TSV-XML conversion", e);
		}
		
		return DocumentHelper.buildModel(xml);
	}

}
