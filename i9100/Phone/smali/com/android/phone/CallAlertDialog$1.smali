.class Lcom/android/phone/CallAlertDialog$1;
.super Ljava/lang/Object;
.source "CallAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CallAlertDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CallAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/CallAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/phone/CallAlertDialog$1;->this$0:Lcom/android/phone/CallAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/phone/CallAlertDialog$1;->this$0:Lcom/android/phone/CallAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/CallAlertDialog;->finish()V

    .line 48
    return-void
.end method
