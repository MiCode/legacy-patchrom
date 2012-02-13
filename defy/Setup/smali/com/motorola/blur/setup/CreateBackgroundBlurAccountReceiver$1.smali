.class Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver$1;
.super Ljava/lang/Thread;
.source "CreateBackgroundBlurAccountReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 16
    iput-object p1, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver$1;->this$0:Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver;

    iput-object p2, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 19
    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 20
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 22
    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v4, "state"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, state:Ljava/lang/String;
    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->hasBlurAccount(Landroid/content/Context;)Z

    move-result v1

    .line 24
    .local v1, provisioned:Z
    const-string v3, "CONNECTED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 27
    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/motorola/blur/setup/SilentBlurUtility;->isSilentRegistrationRequired(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/motorola/blur/setup/SilentBlurUtility;->silentSetupSDFileExists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    :cond_0
    iget-object v3, p0, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver$1;->val$context:Landroid/content/Context;

    #calls: Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver;->wakeUpService(Landroid/content/Context;)V
    invoke-static {v3}, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountReceiver;->access$000(Landroid/content/Context;)V

    .line 32
    .end local v1           #provisioned:Z
    .end local v2           #state:Ljava/lang/String;
    :cond_1
    return-void
.end method
