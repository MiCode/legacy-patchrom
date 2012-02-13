.class Lcom/motorola/blur/setup/LegalReaderActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "LegalReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/LegalReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/LegalReaderActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/LegalReaderActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    iput-object p1, p0, Lcom/motorola/blur/setup/LegalReaderActivity$2;->this$0:Lcom/motorola/blur/setup/LegalReaderActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 145
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    sget-object v1, Lcom/motorola/blur/util/concurrent/UIThreads;->executors:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/motorola/blur/setup/LegalReaderActivity$2$1;

    invoke-direct {v2, p0}, Lcom/motorola/blur/setup/LegalReaderActivity$2$1;-><init>(Lcom/motorola/blur/setup/LegalReaderActivity$2;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 157
    :cond_0
    return-void
.end method
