.class Lcom/android/phone/EmergencyCallbackModeExitDialog$4;
.super Ljava/lang/Object;
.source "EmergencyCallbackModeExitDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallbackModeExitDialog;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$4;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$4;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    #getter for: Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->access$400(Lcom/android/phone/EmergencyCallbackModeExitDialog;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 229
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$4;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showDialog(I)V

    .line 230
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$4;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v0, v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 231
    return-void
.end method
