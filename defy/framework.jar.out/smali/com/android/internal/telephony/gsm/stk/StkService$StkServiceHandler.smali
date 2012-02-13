.class Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;
.super Landroid/os/Handler;
.source "StkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/stk/StkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StkServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/stk/StkService;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/StkService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message with number: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->IDLE_SCREEN_AVAIL:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    .local v7, e:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->access$100(Lcom/android/internal/telephony/gsm/stk/StkService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkService;->m_eventList:[Z
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->access$200(Lcom/android/internal/telephony/gsm/stk/StkService;)[Z

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->value()I

    move-result v1

    aget-boolean v0, v0, v1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkService;->m_idleScreen:Z
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->access$500(Lcom/android/internal/telephony/gsm/stk/StkService;)Z

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "screen has been already idle, sent to sim"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->value()I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x81

    const/4 v4, 0x0

    const/4 v5, 0x1

    #calls: Lcom/android/internal/telephony/gsm/stk/StkService;->eventDownload(III[BZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->access$300(Lcom/android/internal/telephony/gsm/stk/StkService;III[BZ)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkService;->m_eventList:[Z
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->access$200(Lcom/android/internal/telephony/gsm/stk/StkService;)[Z

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->value()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    :cond_1
    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .end local v7           #e:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkService;->mAm:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->access$600(Lcom/android/internal/telephony/gsm/stk/StkService;)Landroid/app/IActivityManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    #getter for: Lcom/android/internal/telephony/gsm/stk/StkService;->mAm:Landroid/app/IActivityManager;
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->access$600(Lcom/android/internal/telephony/gsm/stk/StkService;)Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .local v6, config:Landroid/content/res/Configuration;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    iget-object v1, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/internal/telephony/gsm/stk/StkService;->mLang:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->access$702(Lcom/android/internal/telephony/gsm/stk/StkService;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the current locale is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v6           #config:Landroid/content/res/Configuration;
    :catch_0
    move-exception v0

    move-object v8, v0

    .local v8, ex:Landroid/os/RemoteException;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    const-string v1, "en"

    #setter for: Lcom/android/internal/telephony/gsm/stk/StkService;->mLang:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->access$702(Lcom/android/internal/telephony/gsm/stk/StkService;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "query am failed, set language as en"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v8           #ex:Landroid/os/RemoteException;
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->this$0:Lcom/android/internal/telephony/gsm/stk/StkService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    #calls: Lcom/android/internal/telephony/gsm/stk/StkService;->onScreenModeChange(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->access$800(Lcom/android/internal/telephony/gsm/stk/StkService;Z)V

    goto/16 :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
