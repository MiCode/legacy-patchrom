.class Lcom/android/phone/InVTCallScreen$4;
.super Landroid/content/BroadcastReceiver;
.source "InVTCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 1245
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "onReceive  - INTENT_MSG_SECURITY"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1246
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1247
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1248
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4800(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4900(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1252
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "Camera desabled due DPM  - INTENT_MSG_SECURITY"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 1253
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0d023f

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1257
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$4;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->enableHideMeState()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5000(Lcom/android/phone/InVTCallScreen;)V

    .line 1260
    :cond_1
    return-void
.end method
