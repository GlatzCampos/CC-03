import java.io.BufferedReader;
import java.io.FileReader;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;

public class App2 {
    static private String path;
    public ArrayList<Personagem> listaPersonagens;

    public static boolean isFim(String input){
        return input.equals("FIM");
    }

    App2(){this(1);}

    App2(int l){
        listaPersonagens = new ArrayList<Personagem>();
        if(l == 0) path = "/media/gabrielglatz/SSD/Documents/CC-03/Algoritimo e Estrutura de Dados II/TP/TP2/characters.csv";
        else path = "/tmp/characters.csv";
    }

    public static String getPersonagemInfo(String id){
        String str = "";

        FileReader file;
        BufferedReader br;

        try{
            file = new FileReader(path);
            br = new BufferedReader(file);

            str = ReaderID(id, br);

            br.close();
            file.close();
        }catch (Exception e) {
            e.printStackTrace();
        }

        return str;

    }

    public static String getCSV(String Id) {
        String str = "";
        try {
            FileReader file = new FileReader("/media/gabrielglatz/SSD/Documents/CC-03/Algoritimo e Estrutura de Dados II/TP/TP2/characters.csv");
            BufferedReader br = new BufferedReader(file);
            str = ReaderID(Id, br);
            br.close();
            file.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public static String ReaderID(String id, BufferedReader br) {
        String csvLine = "";
        Boolean foundId = false;

        try{
            while((foundId == false) && (csvLine = br.readLine()) != null) {
                String atualId = csvLine.substring(0, csvLine.indexOf(";"));

                if(id.equals(atualId))
                    foundId = true;
            }
        }catch(Exception e){MyIO.println(e.getMessage());}
        return csvLine;
    }

    public void addPersonagem(String id){
        String str = getPersonagemInfo(id);
        Personagem personagem = new Personagem(id);
        listaPersonagens.add(personagem);
    }

    public void printListaPersonagem(){
        for(int i = 0; i < listaPersonagens.size(); i++){
            listaPersonagens.get(i).printPersonagem();
        }
    } 

    public static void main(String[] args) {
        App2 app = new App2(0);

        String id = MyIO.readLine();
        while(!isFim(id)){
            app.addPersonagem(id);
            id = MyIO.readLine();
        }
        getCSV(id);
        
    } 
}

class Personagem {
    private String id;
    private String name;
    private ArrayList<String> alternate_names;
    private String house;
    private String ancestry;
    private String species;
    private String patronus;
    private Boolean hogwartsStaff;
    private Boolean hogwartsStudent;
    private String actorName;
    private Boolean alive;
    private ArrayList<String> alternate_actors;
    private LocalDate dateOfBirth;
    private Integer yearOfBirth;
    private String eyeColor;
    private String gender;
    private String hairColor;
    private Boolean wizard;
    
    Personagem(){
        this.id = null;
        this.name = null;
        this.alternate_names = null;
        this.house = null;
        this.ancestry = null;
        this.species = null;
        this.patronus = null;
        this.hogwartsStaff = null;
        this.hogwartsStudent = null;
        this.actorName = null;
        this.alive = null;
        this.alternate_actors = null;
        this.dateOfBirth = null;
        this.yearOfBirth = null;
        this.eyeColor = null;
        this.gender = null;
        this.hairColor = null;
        this.wizard = null;
    }

    Personagem(String str){
        setPersonagem(str);
    }

    public String getId() {return this.id;}
    public String getName() {return this.name;}
    public ArrayList<String> getAltName() {return this.alternate_names;}
    public String getHouse() {return this.house;}
    public String getAncestry() {return this.ancestry;}
    public String getSpecies() {return this.species;}
    public String getPatronus() {return this.patronus;}
    public Boolean getHogwartsStaff() {return this.hogwartsStaff;}
    public Boolean getHogwartsStudent() {return this.hogwartsStudent;}
    public String getActorName() {return this.actorName;}
    public Boolean getAlive() {return this.alive;}
    public ArrayList<String> getAltActors() {return this.alternate_actors;}
    public LocalDate getDateOfBirth() {return this.dateOfBirth;}
    public Integer getYearOfBirth() {return this.yearOfBirth;}
    public String getEyeColor() {return this.eyeColor;}
    public String getGender() {return this.gender;}
    public String getHairColor() {return this.hairColor;}
    public Boolean getWizard() {return this.wizard;}

    
    public void setId(String Id) {this.id = Id;}
    public void setName(String Name) {this.name = Name;}
    public void setAltName(ArrayList<String> AltName) {this.alternate_names = AltName;}
    public void setHouse(String House) {this.house = House;}
    public void setAncestry(String Ancestry) {this.ancestry = Ancestry;}
    public void setSpecies(String Species) {this.species = Species;}
    public void setPatronus(String Patronus) {this.patronus = Patronus;}
    public void setHogwartsStaff(Boolean HogwartsStaff) {this.hogwartsStaff = HogwartsStaff;}
    public void setHogwartsStudent(Boolean HogwartsStudent) {this.hogwartsStudent = HogwartsStudent;}
    public void setActorName(String ActorName) {this.actorName = ActorName;}
    public void setAlive(Boolean Alive) {this.alive = Alive;}
    public void setAltActors(ArrayList<String> AltActors) {this.alternate_actors = AltActors;}
    public void setDateOfBirth(LocalDate DateOfBirth) {this.dateOfBirth = DateOfBirth;}
    public void setYearOfBirth(Integer YearOfBirth) {this.yearOfBirth = YearOfBirth;}
    public void setEyeColor(String EyeColor) {this.eyeColor = EyeColor;}
    public void setGender(String Gender) {this.gender = Gender;}
    public void setHairColor(String HairColor) {this.hairColor = HairColor;}
    public void setWizard(Boolean Wizard) {this.wizard = Wizard;}

    public void setAltName(String AltName){setAltName(StringArrayList(AltName));}
    public void setHogwartsStaff(String HogwartsStaff){setHogwartsStaff(StringBoolean(HogwartsStaff));}
    public void setHogwartsStudent(String HosetHogwartsStudent){setHogwartsStudent(StringBoolean(HosetHogwartsStudent));}
    public void setAlive(String Alive){setAlive(StringBoolean(Alive));}
    public void setAltActors(String AltAsetAltActors){setAltActors(StringArrayList(AltAsetAltActors));}
    public void setDateOfBirth(String DateOfBirth){setDateOfBirth(LocalDate.parse(formatDate(DateOfBirth)));}
    public void setYearOfBirth(String YearOfBirth){setYearOfBirth(Integer.parseInt(YearOfBirth));}
    public void setWizard(String Wizard){setWizard(StringBoolean(Wizard));}


    static public Boolean StringBoolean(String str){
        return (str.equals("VERDADEIRO")) ? true : false;
    }

    static public ArrayList<String> StringArrayList(String str){
        str = str.replace("[", "");
        str = str.replace("]", "");

        ArrayList<String> lista = new ArrayList<String>(Arrays.asList(str.split(";")));

        return lista;
    }

    static public String formatDate(String str){
        String[] split = str.split(".");
        if(split[1].length() == 1) 
            split[1] = "0" + split[1];

        str = split[2] + "-" + split[1] + "-" + split[0];
        return str;
    }

    public String ArrayListString(ArrayList<String> array){
        String str = "";

        for(int i = 0; i < array.size(); i++){
            str += array.get(i) + ",";
        }

        str = str.substring(0, str.length()-1);
        if(str.equals(" "))
            str = " ";

        return str;
    }

    private String[] splitDados(String strDados){
        String[] arrayDados = new String[18];
        String[] alternateDados = new String[2];

        strDados = strDados.replace("'", "");
        StringBuilder sbDel = new StringBuilder(strDados);

        int tam = 2;
        do{
            int indexInicio = strDados.indexOf("[");
            int indexFinal = strDados.indexOf("]");
            if(indexInicio+1 != indexFinal){
                alternateDados[alternateDados.length - tam] = strDados.substring(indexInicio, indexFinal+1);
            }else{
                alternateDados[alternateDados.length - tam] = "";
            }

            strDados = sbDel.delete(indexInicio, indexFinal+2).toString();

            tam--;
        }while(tam > 0);

        strDados += "; ; ";
        arrayDados = strDados.split(";");
        arrayDados[16] = alternateDados[0];
        arrayDados[17] = alternateDados[1];

        return arrayDados;
    }

    private void setPersonagem(String dado){
        String[] arrayDados = new String[18];
        arrayDados = splitDados(dado);

        setId(arrayDados[0]);
        setName(arrayDados[1]);
        setHouse(arrayDados[2]);
        setAncestry(arrayDados[3]);
        setSpecies(arrayDados[4]);
        setPatronus(arrayDados[5]);
        setHogwartsStaff(arrayDados[6]);
        setHogwartsStudent(arrayDados[7]);
        setActorName(arrayDados[8]);
        setAlive(arrayDados[9]);
        setDateOfBirth(arrayDados[10]);
        setYearOfBirth(arrayDados[11]);
        setEyeColor(arrayDados[12]);
        setGender(arrayDados[13]);
        setHairColor(arrayDados[14]);
        setWizard(arrayDados[15]);
        setAltName(arrayDados[16]);
        setAltActors(arrayDados[17]);
    }

    public void printPersonagem(){
        MyIO.print("[");
        MyIO.print(getId() + " ## ");
        MyIO.print(getName() + " ## ");

        MyIO.print("{" + ArrayListString(alternate_names) + "}" + " ## ");

        MyIO.print(getHouse() + " ## ");
        MyIO.print(getAncestry() + " ## ");
        MyIO.print(getSpecies() + " ## ");
        MyIO.print(getPatronus() + " ## ");


    }
}