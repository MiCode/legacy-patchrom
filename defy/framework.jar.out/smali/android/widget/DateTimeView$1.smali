.class Landroid/widget/DateTimeView$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DateTimeView;


# direct methods
.method constructor <init>(Landroid/widget/DateTimeView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/DateTimeView$1;->this$0:Landroid/widget/DateTimeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Landroid/widget/DateTimeView$1;->this$0:Landroid/widget/DateTimeView;

    #getter for: Landroid/widget/DateTimeView;->mUpdateTimeMillis:J
    invoke-static {v3}, Landroid/widget/DateTimeView;->access$000(Landroid/widget/DateTimeView;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/DateTimeView$1;->this$0:Landroid/widget/DateTimeView;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/widget/DateTimeView;->mLastFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Landroid/widget/DateTimeView$1;->this$0:Landroid/widget/DateTimeView;

    invoke-virtual {v1}, Landroid/widget/DateTimeView;->update()V

    goto :goto_0
.end method
