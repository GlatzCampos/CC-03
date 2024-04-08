import java.io.BufferedReader;
import java.io.FileReader;
import java.time.LocalDate;
import java.util.ArrayList;

public class App2 {

    public static String getCSV(String Id) {
        String str = "";
        try {
            FileReader file = new FileReader("/media/gabrielglatz/SSD/Documents/CC-03/Algoritimo e Estrutura de Dados II/TP/TP2/characters.csv");
            BufferedReader br = new BufferedReader(file);
            str = ReaderID(Id, br);
            br.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str;
    }

    public static String ReaderID(String id, BufferedReader br) {
        String csvLine = "";
        return csvLine;
    }

    public static void main(String[] args) {
        String id = MyIO.readLine();
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
}