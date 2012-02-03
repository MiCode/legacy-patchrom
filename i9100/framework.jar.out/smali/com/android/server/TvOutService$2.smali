.class Lcom/android/server/TvOutService$2;
.super Landroid/content/BroadcastReceiver;
.source "TvOutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TvOutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TvOutService;


# direct methods
.method constructor <init>(Lcom/android/server/TvOutService;)V
    .locals 0
    .parameter

    .prologue
    .line 1265
    iput-object p1, p0, Lcom/android/server/TvOutService$2;->this$0:Lcom/android/server/TvOutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v3, "TvOut-Observer"

    .line 1268
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1269
    .local v0, action:Ljava/lang/String;
    const-string v1, "TvOut-Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    const-string v1, "android.intent.action.locale.changed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1272
    const-string v1, "TvOut-Observer"

    const-string v1, " TvoutAnalogSetSuspendString BroadcastReceiver  broadcast received"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-object v1, p0, Lcom/android/server/TvOutService$2;->this$0:Lcom/android/server/TvOutService;

    #calls: Lcom/android/server/TvOutService;->TvoutAnalogSetSuspendString()V
    invoke-static {v1}, Lcom/android/server/TvOutService;->access$300(Lcom/android/server/TvOutService;)V

    .line 1299
    :cond_0
    return-void
.end method
