.class Lcom/android/phone/InCallScreenShowActivation$1;
.super Landroid/content/BroadcastReceiver;
.source "InCallScreenShowActivation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreenShowActivation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreenShowActivation;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreenShowActivation;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/phone/InCallScreenShowActivation$1;->this$0:Lcom/android/phone/InCallScreenShowActivation;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.phone.InCallScreen.OTA_CALL_ENDED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    const-string v2, "com.android.phone.extra.OTA_RESULT"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 140
    .local v1, otaResult:Z
    invoke-static {}, Lcom/android/phone/InCallScreenShowActivation;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/InCallScreenShowActivation$1;->this$0:Lcom/android/phone/InCallScreenShowActivation;

    const-string v3, "OTA Result received"

    #calls: Lcom/android/phone/InCallScreenShowActivation;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/phone/InCallScreenShowActivation;->access$100(Lcom/android/phone/InCallScreenShowActivation;Ljava/lang/String;)V

    .line 141
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreenShowActivation$1;->this$0:Lcom/android/phone/InCallScreenShowActivation;

    #calls: Lcom/android/phone/InCallScreenShowActivation;->sendOtaResult(Z)V
    invoke-static {v2, v1}, Lcom/android/phone/InCallScreenShowActivation;->access$200(Lcom/android/phone/InCallScreenShowActivation;Z)V

    .line 143
    .end local v1           #otaResult:Z
    :cond_1
    return-void
.end method
