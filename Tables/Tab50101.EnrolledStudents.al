table 50101 "Enrolled Students"
{
    Caption = 'Enrolled Students';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID"; Code[20])
        {
            Caption = 'Student ID';
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
        field(6; "Date of Birth"; Date)
        {
            Caption = 'Date of Birth';
        }
        field(7; Email; Code[50])
        {
            Caption = 'Email';
        }
        field(8; "Programme Name"; Text[50])
        {
            Caption = 'Programme Name';
            DataClassification = ToBeClassified;
            TableRelation = Course;

        }
    }
    keys
    {
        key(PK; "Student ID")
        {
            Clustered = true;
        }
    }
    var
        myInt: Code[20];
        noseries: Codeunit NoSeriesManagement;

    trigger OnInsert()
    begin
        if rec."Student ID" = '' then begin
            noseries.InitSeries('ADMNO', xRec."No Series", 0D, "Student ID", "No Series");
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
}
