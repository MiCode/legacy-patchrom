.class Lcom/android/internal/telephony/gsm/stk/StkService$1;
.super Landroid/content/BroadcastReceiver;
.source "StkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/stk/StkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/stk/StkService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/stk/StkService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnReceiver is runnig in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    #calls: Lcom/android/internal/telephony/gsm/stk/StkService;->onConfigurationChanged()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->access$000(Lcom/android/internal/telephony/gsm/stk/StkService;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "android.intent.action.stk.user_activity"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Receives user activity notification"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gsm.stk.event.useractivity"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Clean up system property for useractivity"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->USER_ACTIVITY:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    .local v7, e:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->access$100(Lcom/android/internal/telephony/gsm/stk/StkService;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkService;->m_eventList:[Z
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->access$200(Lcom/android/internal/telephony/gsm/stk/StkService;)[Z

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->value()I

    move-result v1

    aget-boolean v0, v0, v1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->value()I

    move-result v1

    const/16 v2, 0x82

    const/16 v3, 0x81

    const/4 v4, 0x0

    const/4 v5, 0x1

    #calls: Lcom/android/internal/telephony/gsm/stk/StkService;->eventDownload(III[BZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->access$300(Lcom/android/internal/telephony/gsm/stk/StkService;III[BZ)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkService;->m_eventList:[Z
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->access$200(Lcom/android/internal/telephony/gsm/stk/StkService;)[Z

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->value()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService$1;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    #calls: Lcom/android/internal/telephony/gsm/stk/StkService;->resetBroadcastReceiver()V
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->access$400(Lcom/android/internal/telephony/gsm/stk/StkService;)V

    const-string v0, "Cleanup user activity notification receiver"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
