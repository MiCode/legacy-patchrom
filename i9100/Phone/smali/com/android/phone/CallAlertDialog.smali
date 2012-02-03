.class public Lcom/android/phone/CallAlertDialog;
.super Landroid/app/Activity;
.source "CallAlertDialog.java"


# static fields
.field static MESSAGE:Ljava/lang/String;


# instance fields
.field private mDialogMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "call_alert_dialog_message"

    sput-object v0, Lcom/android/phone/CallAlertDialog;->MESSAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallAlertDialog;->mDialogMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const-string v3, "AlertDialog"

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const-string v2, "AlertDialog"

    const-string v2, "onCreate:"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {p0}, Lcom/android/phone/CallAlertDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 71
    .local v1, parentIntent:Landroid/content/Intent;
    sget-object v2, Lcom/android/phone/CallAlertDialog;->MESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 72
    .local v0, message:Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 73
    const-string v2, "AlertDialog"

    const-string v2, "Message is null"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {p0}, Lcom/android/phone/CallAlertDialog;->finish()V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/CallAlertDialog;->mDialogMessage:Ljava/lang/String;

    .line 79
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/phone/CallAlertDialog;->showDialog(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 38
    packed-switch p1, :pswitch_data_0

    .line 62
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 40
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/phone/CallAlertDialog;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d02c1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d003e

    new-instance v3, Lcom/android/phone/CallAlertDialog$1;

    invoke-direct {v3, p0}, Lcom/android/phone/CallAlertDialog$1;-><init>(Lcom/android/phone/CallAlertDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 51
    .local v0, dialog:Landroid/app/Dialog;
    new-instance v1, Lcom/android/phone/CallAlertDialog$2;

    invoke-direct {v1, p0}, Lcom/android/phone/CallAlertDialog$2;-><init>(Lcom/android/phone/CallAlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    move-object v1, v0

    .line 58
    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
