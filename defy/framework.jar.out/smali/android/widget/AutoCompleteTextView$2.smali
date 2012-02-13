.class Landroid/widget/AutoCompleteTextView$2;
.super Ljava/lang/Object;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AutoCompleteTextView;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AutoCompleteTextView;


# direct methods
.method constructor <init>(Landroid/widget/AutoCompleteTextView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/AutoCompleteTextView$2;->this$0:Landroid/widget/AutoCompleteTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    iget-object v1, p0, Landroid/widget/AutoCompleteTextView$2;->this$0:Landroid/widget/AutoCompleteTextView;

    #getter for: Landroid/widget/AutoCompleteTextView;->mDropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;
    invoke-static {v1}, Landroid/widget/AutoCompleteTextView;->access$1000(Landroid/widget/AutoCompleteTextView;)Landroid/widget/AutoCompleteTextView$DropDownListView;

    move-result-object v0

    .local v0, dropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    #setter for: Landroid/widget/AutoCompleteTextView$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Landroid/widget/AutoCompleteTextView$DropDownListView;->access$602(Landroid/widget/AutoCompleteTextView$DropDownListView;Z)Z

    .end local v0           #dropDownList:Landroid/widget/AutoCompleteTextView$DropDownListView;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
