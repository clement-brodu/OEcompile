 
 /*------------------------------------------------------------------------
    File        : AForm
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : pnv_cbr
    Created     : Tue Feb 26 15:08:53 CET 2019
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING View.FrwkForm.

BLOCK-LEVEL ON ERROR UNDO, THROW.

CLASS View.AForm INHERITS FrwkForm: 
    
    DEFINE PRIVATE VARIABLE components AS System.ComponentModel.IContainer NO-UNDO.
    
    {property.i prop1 CHARACTER}
    {property.i prop2 CHARACTER}
        
    CONSTRUCTOR PUBLIC AForm (  ):
        
        
        SUPER().
        InitializeComponent().
        THIS-OBJECT:productLabel:Text = "Product A".
        CATCH e AS Progress.Lang.Error:
            UNDO, THROW e.
        END CATCH.

    END CONSTRUCTOR.

    METHOD PRIVATE VOID InitializeComponent(  ):
        
        /* NOTE: The following method is automatically generated.
        
        We strongly suggest that the contents of this method only be modified using the
        Visual Designer to avoid any incompatible modifications.
        
        Modifying the contents of this method using a code editor will invalidate any support for this file. */
        THIS-OBJECT:SuspendLayout().
        THIS-OBJECT:Name = "AForm".
        THIS-OBJECT:Text = "AForm".
        THIS-OBJECT:ResumeLayout(FALSE).
        CATCH e AS Progress.Lang.Error:
            UNDO, THROW e.
        END CATCH.

    END METHOD.

    DESTRUCTOR PUBLIC AForm ( ):

    END DESTRUCTOR.

END CLASS.