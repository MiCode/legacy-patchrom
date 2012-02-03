.class Lcom/android/phone/CallAlertDialog$2;
.super Ljava/lang/Object;
.source "CallAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 51
    iput-object p1, p0, Lcom/android/phone/CallAlertDialog$2;->this$0:Lcom/android/phone/CallAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 53
    const-string v0, "AlertDialog"

    const-string v1, "onDismiss:"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/android/phone/CallAlertDialog$2;->this$0:Lcom/android/phone/CallAlertDialog;

    invoke-virtual {v0}, Lcom/android/phone/CallAlertDialog;->finish()V

    .line 55
    return-void
.end method
