using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

public partial class quiz : System.Web.UI.Page
{
    public string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
    public int type;
    public bool verifica_vector(int id, int[] vector)
    {
        bool ok = true;
        for (int i = 0; i < vector.Length; i++)
        {
            if (vector[i] == id)
            {
                ok = false;
            }
        }
        return ok;
    }
    public int gen()
    {
        Random rnd = new Random();
        int id = rnd.Next(1, 12);
    
        return id;
    }
    public int generare(int[] vector){
        int id = gen();
        bool ver = false;
        while (!ver)
        {
            id = gen();
            ver = verifica_vector(id, vector);
        }
        return id;
    }
    public int get_type(int id)
    {
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();
        string sql = "SELECT tip FROM intrebari WHERE id = "+id;
        SqlCommand comm = new SqlCommand(sql, conn);
        SqlDataReader read = comm.ExecuteReader();
        read.Read();
        return int.Parse(read[0].ToString());
    }
    public int[] gen_vector()
    {
        int[] vector = new int[12];
        int nr = 1;
        while (nr < 12)
        {
            int id = generare(vector);
            vector[nr] = id;
            nr++;

        }
        Session["intrebari"] ="";

        for (int i = 1; i < 12; i++)
        {
            Session["intrebari"] += "," + vector[i].ToString();
        }


        return vector;
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request["final"]))
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            finalPanel.Visible = true;
            Final.Text = "<h2> Felicitari ati terminat testul</h2><h3>Ati obtinut "+Session["nrPuncte"].ToString()+"</h3><p>Clasamentul il puteti vedea <a href='clasament.aspx'>aici</a></p>";
            int util = int.Parse(Session["utilizator"].ToString());
            string sql = "UPDATE utilizatori SET punctaj="+Session["nrPuncte"].ToString()+" WHERE id="+util;
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            SqlCommand comm = new SqlCommand(sql, conn);
            comm.ExecuteNonQuery();
            conn.Close();
            Session.Clear();
        }
        if ((Session["nrIntrebari"] == null))
        {
            Session["nrIntrebari"] = 0;
        }
        if (Session["nrIntrebari"].ToString() == "11")
        {
            Session["nrIntrebari"] = 0;
            Response.Redirect("quiz.aspx?final=2");
        }
        else
        {
            if (!string.IsNullOrEmpty(Request["intrebare"]))
            {
                int id_intrebare = int.Parse(Request["intrebare"].ToString());
                
                nreIntrebareLabel.Text = (int.Parse(Session["nrIntrebari"].ToString()) + 1).ToString();
                Panel1.Visible = false;
                Panel2.Visible = true;
                hintLabel.Visible = false;
                string[] vect = Session["intrebari"].ToString().Split(',');
                int[] vector = new int[12];
                for (int i = 1; i < 12; i++)
                {
                    vector[i] = int.Parse(vect[i]);
                }
                Session["nrIntrebari"] = int.Parse(Session["nrIntrebari"].ToString()) + 1;
                Session["nr"] += "," + Session["nrIntrebari"].ToString();
                int nrIntrebare = int.Parse(Session["nrIntrebari"].ToString());
                int idd = vector[nrIntrebare];
                    type = get_type(idd);
                if (type == 1)
                {
                    inRaspunsSimplu simplu = new inRaspunsSimplu(idd);

                    simpluPanel.Visible = true;
                    multipluPanel.Visible = false;
                    for (int i = 0; i < simplu.raspunsurif.Length; i++)
                    {
                        raspunsuriMultRadio.Items.FindByValue((i + 1).ToString()).Text = simplu.raspunsurif[i];
                    }
                    hintLabel.Visible = true;
                    hintLabel.Text = simplu.hintf;
                    intrebareTextBox.Text = simplu.intrebf;

                }
                else
                {
                    inRaspunsMultiplu multiplu = new inRaspunsMultiplu(idd);
                    var check = new List<CheckBox>();
                    simpluPanel.Visible = false;
                    multipluPanel.Visible = true;
                    intrebareTextBox0.Text = multiplu.intrebf;
                    for (int i = 1; i < 10; i++)
                    {
                        CheckBox checka = (CheckBox)FindControl("multi" + i);
                        checka.Visible = false;
                    }
                    for (int i = 1; i < multiplu.raspunsurif.Length+1; i++)
                    {
                        CheckBox checka = (CheckBox)FindControl("multi" + i);
                        checka.Text = multiplu.raspunsurif[i - 1];
                        checka.Visible = true;
                    }
                    hintLabel.Visible = true;
                    hintLabel.Text = multiplu.hintf;

                }
            }
            else
            {
                Session["nrIntrebari"] = 0; Session["intrebari"] = 1; Session["nrPuncte"] = 0;
                Session["nr"] = "";

                gen_vector();
            }
        }
    }
    users user = new users();
    protected void buttonStart_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connectionString);
        conn.Open();
        string sql = "INSERT INTO utilizatori (nume, email, punctaj) VALUES ('" + textBoxNume.Text + "', '" + textBoxEmail.Text + "', 0)";
        SqlCommand comm = new SqlCommand(sql, conn);
        comm.ExecuteNonQuery();
        sql = "SELECT id FROM utilizatori WHERE email = '" + textBoxEmail.Text + "' ORDER BY id DESC";
        comm.CommandText = sql;
        SqlDataReader read = comm.ExecuteReader();
        read.Read();
        Session["utilizator"] = int.Parse(read[0].ToString());
        user.numef = textBoxNume.Text;
        user.emailf = textBoxEmail.Text;
        conn.Close();
        Response.Redirect("quiz.aspx?intrebare=2");
        
    }
    public class users
    {
        private string nume;
        private string email;
        private double punctaj;

        public users()
        {
            punctaj = 0;
        }
        public string numef
        {
            get
            {
                return nume;
            }
            set
            {
                nume = value;
            }
        }
        public string emailf
        {
            get
            {
                return email;
            }
            set
            {
                email = value;
            }
        }
        public double punctajf
        {
            get
            {
                return punctaj;
            }
            set
            {
                punctaj += value;
            }
        }
        
    }
    public class intrebare
    {
        protected string intreb;
        protected string[] raspunsuri;
        protected string hint;
        public string intrebf
        {
            get
            {
                return intreb;
            }
            set
            {
                intreb = value;
            }
        }
        public string[] raspunsurif
        {
            get
            {
                return raspunsuri;
            }
            set
            {
                raspunsuri = value;
            }
        }
        public string hintf
        {
            get
            {
                return hint;
            }
            set
            {
                hint = value;
            }
        }
    }
    public class inRaspunsSimplu : intrebare
    {
        private int raspunsCorect;
        public inRaspunsSimplu(int id)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            string sql = "SELECT * FROM intrebari WHERE id=" + id + " and tip=1";
            SqlCommand comm = new SqlCommand(sql, conn);
            SqlDataReader read = comm.ExecuteReader();
            while (read.Read())
            {
                
                intreb = read[1].ToString();
                raspunsuri = read[2].ToString().Split(new string[] { " || " }, StringSplitOptions.None);
                raspunsCorect = int.Parse(read[3].ToString());
                hint = read[5].ToString();
                
                
            }
            conn.Close();
        }
        public int raspunsCorec
        {
            get
            {
                return raspunsCorect;
            }
            set
            {
                raspunsCorect = value;
            }
        }
    }
    public class inRaspunsMultiplu : intrebare
    {
        private string[] raspunsCorect;
        public inRaspunsMultiplu(int id)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(connectionString);
            conn.Open();
            string sql = "SELECT * FROM intrebari WHERE id=" + id + " and tip=2";
            SqlCommand comm = new SqlCommand(sql, conn);
            SqlDataReader read = comm.ExecuteReader();
            while(read.Read()){
                intreb = read[1].ToString();
                raspunsuri = read[2].ToString().Split(new string[] { " || " }, StringSplitOptions.None);
                raspunsCorect = read[3].ToString().Split(new string[] { " || " }, StringSplitOptions.None);
                hint = read[5].ToString();
            }
            conn.Close();
        }
        public string[] raspunsCorec
        {
            get
            {
                return raspunsCorect;
            }
            set
            {
                raspunsCorect = value;
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
    }
    protected void raspundeButton_Click(object sender, EventArgs e)
    {
        
        string[] vect = Session["nr"].ToString().Split(',');
        int nr = int.Parse(vect[vect.Length - 2]);
        string[] vector = Session["intrebari"].ToString().Split(',');
        int idd = int.Parse(vector[nr]);
        type = get_type(idd);
        if (type == 1)
        {
            inRaspunsSimplu simp = new inRaspunsSimplu(idd) ;
            corect.Visible = true;
            if (simp.raspunsCorec.ToString() == raspunsuriMultRadio.SelectedItem.Value.ToString())
            {
                corect.ForeColor = Color.Green;
                corect.Text = "Raspuns Corect";
                corect.Visible = true;
                Session["nrPuncte"] = ((float)float.Parse(Session["nrPuncte"].ToString()) + 1).ToString();
                nrpuncteLabel.Text = Session["nrPuncte"].ToString();
            }
            else
            {
                corect.ForeColor = Color.Red;
                corect.Text = "Raspuns Gresit";
                corect.Visible = true;
            }

        }
        else
        {
            if (type == 2)
            {
                inRaspunsMultiplu multi = new inRaspunsMultiplu(idd);
                double count = 0;
                for (int i = 0; i < multi.raspunsCorec.Length; i++)
                {
                    CheckBox checka = (CheckBox)FindControl("multi" + multi.raspunsCorec[i]);
                    if (checka.Checked)
                    {
                        count++;
                    }
                }
                int count1 = 0;
                for (int i = 1; i<=multi.raspunsurif.Length; i++)
                {
                    CheckBox check = (CheckBox)FindControl("multi"+i.ToString());
                    if (check.Checked)
                    {
                        count1++;
                    }
                }
                if (count < multi.raspunsCorec.Length)
                {
                    corect.Visible = true;
                    corect.Text = "Ati selectat " + count + " raspunsuri corecte";
                    corect.ForeColor = Color.Red;
                }
                else
                {
                    corect.Visible = true;
                    corect.Text = "Raspuns corect";
                    corect.ForeColor = Color.Green;
                }
                double countp = count1 - count;
                count = count - countp;
                double score = (double)((double)1 / multi.raspunsCorec.Length) * count;
                score = Math.Round(score, 2);
                Session["nrPuncte"] = ((double)double.Parse(Session["nrPuncte"].ToString()) + score).ToString();
                nrpuncteLabel.Text = Session["nrPuncte"].ToString();
            }
        }
    }
}