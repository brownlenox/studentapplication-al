table 50100 StudentApplicationForm
{
    Caption = 'StudentApplicationForm';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ApplicationID; Code[20])
        {
            Caption = 'ApplicationID';
            Editable = false;
        }
        field(333; "No Series"; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(2; "First Name"; Text[50])
        {
            Caption = 'First Name';
            trigger OnValidate()
            begin
                UpdateFullName();
            end;
        }
        field(3; "Middle Name"; Text[50])
        {
            Caption = 'Middle Name';
            trigger OnValidate()
            begin
                UpdateFullName();
            end;
        }
        field(4; "Last Name"; Text[50])
        {
            Caption = 'Last Name';
            trigger OnValidate()
            begin
                UpdateFullName();
            end;
        }
        field(5; "Full Name"; Text[50])
        {
            Caption = 'Full Name';
            Editable = false;
        }
        field(6; Title; Option)
        {
            Caption = 'Title';
            OptionMembers = "Mr.","Mrs.",Miss,"Ms.","Dr. (Doctor)","Prof. (Professor)","Professional Titles","Eng. (Engineer)","Arch. (Architect)","Capt. (Captain)","Col. Colonel)","Gen. (General)","Maj. (Major)","Lt. (Lieutenant)","Sgt. (Sergeant)","Rev. (Reverend)","Hon. (Honorable)","Sen. (Senator)","Rep. (Representative)","Dean","Chancellor","Principal","Vice-Chancellor","Sir","Dame","Lord","Lady","Baron","Baroness","Duke","Duchess","Earl","Countess","Viscount","Viscountess","Prince","Princess","King","Queen","Adm. (Admiral)","Brig. (Brigadier)","Cmdr. (Commander)","Cpt. (Captain)","Maj. Gen. (Major General)","Rear Adm. (Rear Admiral)","W.O. (Warrant Officer)","Bishop","Cardinal","Pastor","Imam","Rabbi","Sheikh","Guru","Swami","Esq. (Esquire)","J.D. (Juris Doctor)","Ph.D. (Doctor of Philosophy)","M.D. (Doctor of Medicine)","R.N. (Registered Nurse)","D.V.M. (Doctor of Veterinary Medicine)","C.F.O. (Chief Financial Officer)","C.E.O. (Chief Executive Officer)","C.O.O. (Chief Operating Officer)";
        }
        field(7; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
            trigger OnValidate()
            begin
                ValidateAge();
            end;
        }
        field(8; Nationality; Text[50])
        {
            Caption = 'Nationality';

        }
        field(9; ID; Integer)
        {
            Caption = 'ID';
        }
        field(10; County; Text[50])
        {
            Caption = 'County';
        }
        field(11; "Sub-county"; Text[50])
        {
            Caption = 'Sub-county';
        }
        field(12; Location; Text[50])
        {
            Caption = 'Location';
        }
        field(13; "County of Residence"; Text[50])
        {
            Caption = 'County of Residence';
        }
        field(14; Gender; Option)
        {
            Caption = 'Gender';
            OptionMembers = Male,Female,Other;
        }
        field(15; Email; Text[50])
        {
            Caption = 'Email';
            trigger OnValidate()
            begin
                ValidateEmail();
            end;
        }
        field(16; "Phone Number"; Code[20])
        {
            Caption = 'Phone Number';
            trigger OnValidate()
            var
                Validations: Codeunit MyPublishers;
            begin
                Validations.OnPhoneNumberChanged(Rec."Phone Number");
            end;
        }
        field(17; "Name of Father"; Text[50])
        {
            Caption = 'Name of Father';
        }
        field(18; "Father's Phone Number"; Code[20])
        {
            Caption = 'Father''s Phone Number';
        }
        field(19; "Father's Occupation"; Text[50])
        {
            Caption = 'Father''s Occupation';
        }
        field(20; "Father Alive"; Boolean)
        {
            Caption = 'Father Alive';
        }
        field(21; "Name of Mother"; Boolean)
        {
            Caption = 'Name of Mother';
        }
        field(39; "Mother's name"; Text[50])
        {
            Caption = 'Name of Mother';
        }
        field(22; "Mother's Phone Number"; Code[20])
        {
            Caption = 'Mother''s Phone Number';
        }
        field(23; "Mother's Occupation"; Text[50])
        {
            Caption = 'Mother''s Occupation';
        }
        field(24; "Mother Alive"; Boolean)
        {
            Caption = 'Mother Alive';
        }
        field(25; "Attended Secondary School"; Text[50])
        {
            Caption = 'Attended Secondary School';
        }
        field(26; "Attained Mean Grade"; Option)
        {
            Caption = 'Attained Mean Grade';
            OptionMembers = A,"A-",B,"B+","B-",C,"C+","C-",D,"D+","D-",E;
        }
        field(27; "Emergency Contact Name"; Text[50])
        {
            Caption = 'Emergency Contact Name';
        }
        field(28; "Emergency Contact Phone"; Code[20])
        {
            Caption = 'Emergency Contact Phone';
        }
        field(29; "Emergency Contact Occupation"; Text[50])
        {
            Caption = 'Emergency Contact Occupation';
        }
        field(30; "Relationship With Emergency"; Text[50])
        {
            Caption = 'Relationship With Emergency Contact';
        }
        field(31; "Programme Level"; Option)
        {
            Caption = 'Programme Level';
            OptionMembers = Doctorate,"Master's","Postgraduate Diploma","Bachelor's",Diploma,Certificate;
        }
        field(32; "Mode of Study"; Option)
        {
            Caption = 'Mode of Study';
            OptionMembers = Regular,Evening,Weekends,"Distance Institution-Based and Electronic Learning(DIBeL)","Open Distance and Electronic Learning(ODEL)";
        }
        field(33; "Preferred Intake"; Option)
        {
            Caption = 'Preferred Intake';
            OptionMembers = January,April,May,August,September,December;
        }
        field(34; "Programme Name"; Text[50])
        {
            Caption = 'Programme Name';
            TableRelation = Course."Course Name";
        }
        field(35; "Preferred Campus"; Option)
        {
            Caption = 'Preferred Campus';
            OptionMembers = "Main Campus - Thika",Parklands,Nairobi,Mombasa,Eldoret,Nakuru,Meru,Kakamega,Kitale,Kisii,Kigali,Kisumu,Kericho,Malindi,Hargeisa,Nyeri,Kampala,Embu,Machakos;
        }
        field(36; "Financing of Studies"; Option)
        {
            Caption = 'Financing of Studies';
            OptionMembers = Self,"Parent/Guardian","Government/Helb","Other Sponsorship";
        }
        field(37; "Preferred Sport"; Option)
        {
            Caption = 'Preferred Sport';
            OptionMembers = Football,Rugby,Hockey,Baketball,Volleyball,"Table Tennis",Karate,Chess,Swimming,Other;
        }
        field(38; "How You Learnt About Us"; Option)
        {
            Caption = 'How You Learnt About The University';
            OptionMembers = Radio,Television,Newspapers,"Friends/Referral",Exhibition,Teacher,Prospectus,"University Website","Social Media";
        }
        field(40; EnrollmentStatus; Enum ApplicationStatusEnum)
        {
            DataClassification = ToBeClassified;
            Caption = 'Enrollment Status';
        }
    }
    keys
    {
        key(PK; "ApplicationID")
        {
            Clustered = true;
        }
    }
    var
        myInt: Code[20];
        noseries: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if rec.ApplicationID = '' then begin
            noseries.InitSeries('STUDAPP', xRec."No Series", 0D, ApplicationID, "No Series");
        end;
    end;

    trigger OnModify()
    begin
        UpdateFullName();
    end;

    local procedure UpdateFullName()
    begin
        "Full Name" := "First Name" + ' ' + "Middle Name" + ' ' + "Last Name";
    end;

    local procedure ValidateAge()
    var
        MinAgeDate: Date;
        CurrentDate: Date;
    begin
        CurrentDate := Today();
        MinAgeDate := CalcDate('<-18Y>', CurrentDate); // Calculate the date for 18 years ago from today
        if "Date of Birth" > MinAgeDate then
            Error('Students must be at least 18 years old to apply.');
    end;

    local procedure ValidateEmail()
    var
        RegEx: Codeunit Regex;
        IsMatch: Boolean;
        Pattern: Text[100];
    begin
        Pattern := '^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$'; // Regex pattern for email validation
        IsMatch := RegEx.IsMatch(Email, Pattern);

        if not IsMatch then
            Error('The email address is not valid. Please enter a valid email address.');
    end;
}

//First Name, Middle Name, Last Name, Title, Date of Birth, Nationality, ID, County, Sub-County, Location, County of Residence, Gender, Email,Phone Number, Name of Father,Father's Phone Number, Father's Occupation,Father Alive,Name of Mother,Mother's name,Mother's Phone Number,Mother's Occupation,Mother Alive,Attended Secondary School,Attained Mean Grade,Emergency Contact Name,Emergency Contact Phone,Emergency Contact Occupation,Relationship With Emergency,Programme Level,Mode of Study,Preferred Intake,Programme Name,Preferred Campus,Financing of Studies ,Preferred Sport,How You Learnt About Us,EnrollmentStatus;
