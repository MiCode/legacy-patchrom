.class Lcom/android/phone/DataUsageListener$1;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/DataUsageListener;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DataUsageListener;


# direct methods
.method constructor <init>(Lcom/android/phone/DataUsageListener;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/phone/DataUsageListener$1;->this$0:Lcom/android/phone/DataUsageListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/16 v10, 0x0

    .line 93
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, action:Ljava/lang/String;
    const-string v0, "android.net.thrott.POLL_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/phone/DataUsageListener$1;->this$0:Lcom/android/phone/DataUsageListener;

    const-string v1, "cycleRead"

    invoke-virtual {p2, v1, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "cycleWrite"

    invoke-virtual {p2, v3, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string v5, "cycleStart"

    invoke-virtual {p2, v5, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string v7, "cycleEnd"

    invoke-virtual {p2, v7, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    #calls: Lcom/android/phone/DataUsageListener;->updateUsageStats(JJJJ)V
    invoke-static/range {v0 .. v8}, Lcom/android/phone/DataUsageListener;->access$000(Lcom/android/phone/DataUsageListener;JJJJ)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    const-string v0, "android.net.thrott.POLICY_CHANGED_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 100
    iget-object v0, p0, Lcom/android/phone/DataUsageListener$1;->this$0:Lcom/android/phone/DataUsageListener;

    #calls: Lcom/android/phone/DataUsageListener;->updatePolicy()V
    invoke-static {v0}, Lcom/android/phone/DataUsageListener;->access$100(Lcom/android/phone/DataUsageListener;)V

    goto :goto_0

    .line 101
    :cond_2
    const-string v0, "android.net.thrott.THROTTLE_ACTION"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/phone/DataUsageListener$1;->this$0:Lcom/android/phone/DataUsageListener;

    const-string v1, "level"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    #calls: Lcom/android/phone/DataUsageListener;->updateThrottleRate(I)V
    invoke-static {v0, v1}, Lcom/android/phone/DataUsageListener;->access$200(Lcom/android/phone/DataUsageListener;I)V

    goto :goto_0
.end method
