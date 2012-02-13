.class Lcom/motorola/server/MotDockObserver$1;
.super Landroid/os/Handler;
.source "MotDockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/server/MotDockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/server/MotDockObserver;


# direct methods
.method constructor <init>(Lcom/motorola/server/MotDockObserver;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/server/MotDockObserver$1;->this$0:Lcom/motorola/server/MotDockObserver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/motorola/server/MotDockObserver;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dock state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/motorola/server/MotDockObserver$1;->this$0:Lcom/motorola/server/MotDockObserver;

    #getter for: Lcom/motorola/server/MotDockObserver;->mDockState:I
    invoke-static {v4}, Lcom/motorola/server/MotDockObserver;->access$100(Lcom/motorola/server/MotDockObserver;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/motorola/server/MotDockObserver$1;->this$0:Lcom/motorola/server/MotDockObserver;

    #getter for: Lcom/motorola/server/MotDockObserver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/server/MotDockObserver;->access$200(Lcom/motorola/server/MotDockObserver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/motorola/server/MotDockObserver;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Device not provisioned, skipping dock broadcast"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.motorola.internal.intent.action.MOT_DOCK_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.motorola.internal.intent.extra.DOCK_STATE"

    iget-object v3, p0, Lcom/motorola/server/MotDockObserver$1;->this$0:Lcom/motorola/server/MotDockObserver;

    #getter for: Lcom/motorola/server/MotDockObserver;->mDockState:I
    invoke-static {v3}, Lcom/motorola/server/MotDockObserver;->access$100(Lcom/motorola/server/MotDockObserver;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/server/MotDockObserver$1;->this$0:Lcom/motorola/server/MotDockObserver;

    #getter for: Lcom/motorola/server/MotDockObserver;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/server/MotDockObserver;->access$200(Lcom/motorola/server/MotDockObserver;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
