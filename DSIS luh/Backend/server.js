const express = require ('express');
const mysql = require('mysql');
const cors = require('cors');

const app = express();
app.use(cors());
app.use(express.json());


const db = mysql.createConnection({
    host:"127.0.0.1",
    user: "root",
    password: "root",  
    database: "dsis_db",
    port: "3307",
    dateStrings: true
})


// getting data from tables
app.get('/patientinfo', (req, res)=>{
    const sql = "SELECT * FROM patientinfotbl";
    db.query(sql, (err, InitPatientInfo)=>{
        if(err) return res.json(err);
        return res.json(InitPatientInfo);
        
    })
})

app.get('/symptomsinfo', (req, res)=>{
    const sql = "SELECT * FROM symptoms_tbl";
    db.query(sql, (err, InitSymptoms)=>{
        if(err) return res.json(err);
        return res.json(InitSymptoms);
        
    })
})

app.get('/suspectedcasesfrombhw', (req, res)=>{
    const sql = "SELECT potential_suspect_tbl.Patient_ID, patientinfotbl.Patient_LastName, patientinfotbl.Patient_FirstName, patientinfotbl.Patient_MI, patientinfotbl.Patient_Bgy, patientinfotbl.Patient_Muni, patientinfotbl.Patient_Province, patientinfotbl.Patient_Bday, potential_suspect_tbl.AcctID, potential_suspect_tbl.potential_suspect_symptoms FROM potential_suspect_tbl LEFT JOIN (patientinfotbl, accounttbl) ON (potential_suspect_tbl.Patient_ID = patientinfotbl.Patient_ID AND potential_suspect_tbl.AcctID = accounttbl.AcctID)  ";
    db.query(sql, (err, InitSuspectedCases)=>{
        if(err) return res.json(err);
        return res.json(InitSuspectedCases);
        
    })
})

app.get('/patientcountinfo', (req, res)=>{
    const sql = "SELECT COUNT(*) AS count FROM patientinfotbl";
    db.query(sql, (err, InitPatientCountInfo)=>{
        if(err) return res.json(err);
        return res.json(InitPatientCountInfo);
        
    })
})

app.get('/suspectedcasecount', (req, res)=>{
    const sql = "SELECT COUNT(*) AS count FROM potential_suspect_tbl";
    db.query(sql, (err, InitSuspectCount)=>{
        if(err) return res.json(err);
        return res.json(InitSuspectCount);
        
    })
})

app.post('/suspectedcasesfrombhw/addpatientinfo', (req, res)=>{
    const sql="insert into patientinfotbl VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
    const id = req.body.Patient_ID;
    const PLName = req.body.Patient_LastName;
    const PFName = req.body.Patient_FirstName;
    const PMI = req.body.Patient_MI;
    const PSuffix = req.body.Patient_Suffix;
    const PBgy = req.body.Patient_Bgy;
    const PMuni = req.body.Patient_Muni;
    const PProv = req.body.Patient_Province;
    const PBday = req.body.Patient_Bday;

    db.query(sql, [id, PLName, PFName, PMI, PSuffix, PBgy, PMuni, PProv, PBday],(err, result)=>{
        if(err) console.log(err)
        return res.json({updated: true})
    })  
})

app.post('/suspectedcasesfrombhw/addpotentialsuspect', (req, res)=>{
    const sql="insert into potential_suspect_tbl VALUES (?, ?, ?, ?, ?)";
    const PSid = req.body.PotentialSuspect_ID;
    const NDID = req.body.Notifiable_Disease_ID;
    const PID = req.body.Patient_ID;
    const AID = req.body.AcctID;
    const potential_symptoms = req.body.potential_suspect_symptoms;

    db.query(sql, [PSid, NDID, PID, AID, potential_symptoms],(err, result)=>{
        if(err) console.log(err)
        return res.json({updated: true})
    })  
})

app.get('/', (req, res)=>{
    return res.json("haiya");
})

app.listen(5001, ()=>{
    console.log("listening");
})