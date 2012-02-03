.class Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$2;
.super Landroid/content/BroadcastReceiver;
.source "GlassLockScreenMissedEventWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.android.server.NotificationManagerService.NotificationArrived"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.server.NotificationManagerService.NotificationRemoved"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    :cond_0
    const-string v2, "GlassLockScreenMissedEventWidget"

    const-string v3, "received MISSED_EVENT intent !! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->access$000(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x12c2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 105
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget$2;->this$0:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    #getter for: Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->access$000(Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 107
    .end local v1           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method
