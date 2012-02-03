.class Lcom/android/internal/widget/LockScreenStatusView$1;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenStatusView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockScreenStatusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockScreenStatusView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/LockScreenStatusView;)V
    .locals 0
    .parameter

    .prologue
    .line 767
    iput-object p1, p0, Lcom/android/internal/widget/LockScreenStatusView$1;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 770
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, action:Ljava/lang/String;
    move-object v1, p2

    .line 772
    .local v1, arg:Landroid/content/Intent;
    const-string v3, "LockScreenStatusView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceive() : action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Thread.currentThread()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const-string v3, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 777
    :cond_1
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 779
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 781
    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 782
    const-string/jumbo v3, "time-zone"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 783
    .local v2, tz:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView$1;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    #setter for: Lcom/android/internal/widget/LockScreenStatusView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v3, v4}, Lcom/android/internal/widget/LockScreenStatusView;->access$002(Lcom/android/internal/widget/LockScreenStatusView;Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 784
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView$1;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    #getter for: Lcom/android/internal/widget/LockScreenStatusView;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Lcom/android/internal/widget/LockScreenStatusView;->access$100(Lcom/android/internal/widget/LockScreenStatusView;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 785
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView$1;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    #getter for: Lcom/android/internal/widget/LockScreenStatusView;->mClockFormat:Ljava/text/SimpleDateFormat;
    invoke-static {v3}, Lcom/android/internal/widget/LockScreenStatusView;->access$100(Lcom/android/internal/widget/LockScreenStatusView;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/LockScreenStatusView$1;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    #getter for: Lcom/android/internal/widget/LockScreenStatusView;->mCalendar:Ljava/util/Calendar;
    invoke-static {v4}, Lcom/android/internal/widget/LockScreenStatusView;->access$000(Lcom/android/internal/widget/LockScreenStatusView;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 790
    .end local v2           #tz:Ljava/lang/String;
    :cond_2
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 792
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView$1;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    new-instance v4, Lcom/android/internal/widget/LockScreenStatusView$1$1;

    invoke-direct {v4, p0, v1}, Lcom/android/internal/widget/LockScreenStatusView$1$1;-><init>(Lcom/android/internal/widget/LockScreenStatusView$1;Landroid/content/Intent;)V

    iput-object v4, v3, Lcom/android/internal/widget/LockScreenStatusView;->mCommand:Ljava/lang/Runnable;

    .line 797
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView$1;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    iget-object v3, v3, Lcom/android/internal/widget/LockScreenStatusView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/widget/LockScreenStatusView$1;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    iget-object v4, v4, Lcom/android/internal/widget/LockScreenStatusView;->mCommand:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 798
    :cond_3
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 800
    const-string v3, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 802
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView$1;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    new-instance v4, Lcom/android/internal/widget/LockScreenStatusView$1$2;

    invoke-direct {v4, p0, v1}, Lcom/android/internal/widget/LockScreenStatusView$1$2;-><init>(Lcom/android/internal/widget/LockScreenStatusView$1;Landroid/content/Intent;)V

    iput-object v4, v3, Lcom/android/internal/widget/LockScreenStatusView;->mCommand:Ljava/lang/Runnable;

    .line 809
    iget-object v3, p0, Lcom/android/internal/widget/LockScreenStatusView$1;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    iget-object v3, v3, Lcom/android/internal/widget/LockScreenStatusView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/widget/LockScreenStatusView$1;->this$0:Lcom/android/internal/widget/LockScreenStatusView;

    iget-object v4, v4, Lcom/android/internal/widget/LockScreenStatusView;->mCommand:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
