.class Landroid/text/method/SmileyPickerDialog$2;
.super Ljava/lang/Object;
.source "SmileyPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/text/method/SmileyPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/text/method/SmileyPickerDialog;


# direct methods
.method constructor <init>(Landroid/text/method/SmileyPickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Landroid/text/method/SmileyPickerDialog$2;->this$0:Landroid/text/method/SmileyPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 102
    iget-object v0, p0, Landroid/text/method/SmileyPickerDialog$2;->this$0:Landroid/text/method/SmileyPickerDialog;

    const/4 v1, 0x0

    #calls: Landroid/text/method/SmileyPickerDialog;->sendShowState(Z)V
    invoke-static {v0, v1}, Landroid/text/method/SmileyPickerDialog;->access$000(Landroid/text/method/SmileyPickerDialog;Z)V

    .line 103
    return-void
.end method
