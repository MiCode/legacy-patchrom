.class Lcom/android/phone/PhoneApp$HdmiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HdmiBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 3416
    iput-object p1, p0, Lcom/android/phone/PhoneApp$HdmiBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/phone/PhoneApp$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3416
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneApp$HdmiBroadcastReceiver;-><init>(Lcom/android/phone/PhoneApp;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const-string v5, "PhoneApp"

    .line 3420
    const-string v3, "PhoneApp"

    const-string v3, "hdmi onReceive"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3421
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3422
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.motorola.intent.action.mirrormodestate"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3423
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 3424
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 3425
    const-string v3, "mirror"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 3426
    .local v1, conn:I
    if-ne v1, v6, :cond_1

    .line 3427
    const-string v3, "PhoneApp"

    const-string v3, "hdmi Enabled"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    iget-object v3, p0, Lcom/android/phone/PhoneApp$HdmiBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    iput-boolean v6, v3, Lcom/android/phone/PhoneApp;->mHdmiMode:Z

    .line 3429
    iget-object v3, p0, Lcom/android/phone/PhoneApp$HdmiBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3430
    iget-object v3, p0, Lcom/android/phone/PhoneApp$HdmiBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    .line 3444
    .end local v1           #conn:I
    .end local v2           #extras:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 3433
    .restart local v1       #conn:I
    .restart local v2       #extras:Landroid/os/Bundle;
    :cond_1
    if-nez v1, :cond_0

    .line 3434
    const-string v3, "PhoneApp"

    const-string v3, "hdmi Disabled"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    iget-object v3, p0, Lcom/android/phone/PhoneApp$HdmiBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/phone/PhoneApp;->mHdmiMode:Z

    .line 3436
    iget-object v3, p0, Lcom/android/phone/PhoneApp$HdmiBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3437
    iget-object v3, p0, Lcom/android/phone/PhoneApp$HdmiBroadcastReceiver;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v3}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    goto :goto_0

    .line 3441
    .end local v1           #conn:I
    :cond_2
    const-string v3, "PhoneApp"

    const-string v3, "Intent MIRROR_PUBLIC_STATE has no extra MIRROR_STATE: does nothing."

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
