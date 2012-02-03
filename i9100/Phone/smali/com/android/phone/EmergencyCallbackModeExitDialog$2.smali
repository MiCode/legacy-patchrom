.class Lcom/android/phone/EmergencyCallbackModeExitDialog$2;
.super Landroid/os/CountDownTimer;
.source "EmergencyCallbackModeExitDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallbackModeExitDialog;->showEmergencyCallbackModeExitDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;JJ)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public onTick(J)V
    .locals 2
    .parameter "millisUntilFinished"

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    #calls: Lcom/android/phone/EmergencyCallbackModeExitDialog;->getDialogText(J)Ljava/lang/CharSequence;
    invoke-static {v1, p1, p2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->access$300(Lcom/android/phone/EmergencyCallbackModeExitDialog;J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 188
    .local v0, text:Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;->this$0:Lcom/android/phone/EmergencyCallbackModeExitDialog;

    iget-object v1, v1, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 189
    return-void
.end method
