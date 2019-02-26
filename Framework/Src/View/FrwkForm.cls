 
 /*------------------------------------------------------------------------
    File        : FrwkForm
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : pnv_cbr
    Created     : Tue Feb 26 14:30:13 CET 2019
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Progress.Windows.Form.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS View.FrwkForm INHERITS Form: 
    
    DEFINE PRIVATE VARIABLE components AS System.ComponentModel.IContainer NO-UNDO.
    DEFINE PROTECTED VARIABLE productLabel AS System.Windows.Forms.Label NO-UNDO.

        
    CONSTRUCTOR PUBLIC FrwkForm (  ):
        
        
        SUPER().
        InitializeComponent().
        THIS-OBJECT:ComponentsCollection:ADD(THIS-OBJECT:components).
        CATCH e AS Progress.Lang.Error:
            UNDO, THROW e.
        END CATCH.

    END CONSTRUCTOR.

    METHOD PRIVATE VOID InitializeComponent(  ):
        
        /* NOTE: The following method is automatically generated.
        
        We strongly suggest that the contents of this method only be modified using the
        Visual Designer to avoid any incompatible modifications.
        
        Modifying the contents of this method using a code editor will invalidate any support for this file. */
        THIS-OBJECT:productLabel = NEW System.Windows.Forms.Label().
        THIS-OBJECT:SuspendLayout().
        /*  */
        /* productLabel */
        /*  */
        THIS-OBJECT:productLabel:Location = NEW System.Drawing.Point(40, 45).
        THIS-OBJECT:productLabel:Name = "productLabel".
        THIS-OBJECT:productLabel:Size = NEW System.Drawing.Size(120, 21).
        THIS-OBJECT:productLabel:TabIndex = 0.
        THIS-OBJECT:productLabel:Text = "< product name >".
        THIS-OBJECT:productLabel:UseCompatibleTextRendering = TRUE.
        /*  */
        /* FrwkForm */
        /*  */
        THIS-OBJECT:ClientSize = NEW System.Drawing.Size(292, 266).
        THIS-OBJECT:Controls:Add(THIS-OBJECT:productLabel).
        THIS-OBJECT:Name = "FrwkForm".
        THIS-OBJECT:Text = "FrwkForm".
        THIS-OBJECT:ResumeLayout(FALSE).
        CATCH e AS Progress.Lang.Error:
            UNDO, THROW e.
        END CATCH.
    END METHOD.

    DESTRUCTOR PUBLIC FrwkForm ( ):

    END DESTRUCTOR.

END CLASS.