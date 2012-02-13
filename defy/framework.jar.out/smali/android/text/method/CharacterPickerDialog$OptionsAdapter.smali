.class Landroid/text/method/CharacterPickerDialog$OptionsAdapter;
.super Landroid/widget/BaseAdapter;
.source "CharacterPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/CharacterPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OptionsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/CharacterPickerDialog;


# direct methods
.method public constructor <init>(Landroid/text/method/CharacterPickerDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    iput-object p1, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    #getter for: Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/method/CharacterPickerDialog;->access$100(Landroid/text/method/CharacterPickerDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    #getter for: Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/method/CharacterPickerDialog;->access$100(Landroid/text/method/CharacterPickerDialog;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    #getter for: Landroid/text/method/CharacterPickerDialog;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v1}, Landroid/text/method/CharacterPickerDialog;->access$000(Landroid/text/method/CharacterPickerDialog;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x109001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .local v0, b:Landroid/widget/Button;
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    #getter for: Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/method/CharacterPickerDialog;->access$100(Landroid/text/method/CharacterPickerDialog;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;->this$0:Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method
