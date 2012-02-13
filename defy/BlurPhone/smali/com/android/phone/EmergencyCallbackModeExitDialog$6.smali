.class Lcom/android/phone/EmergencyCallbackModeExitDialog$6;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyCallbackModeExitDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyCallbackModeExitDialog;
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
    .line 307
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$6;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 311
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 313
    const-string v0, "phoneinECMState"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$6;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v0, v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$6;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v0, v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$6;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v0, v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$6;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v0, v0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$6;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "exit_ecm_result"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->setResult(ILandroid/content/Intent;)V

    .line 320
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$6;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->finish()V

    .line 323
    :cond_2
    return-void
.end method
