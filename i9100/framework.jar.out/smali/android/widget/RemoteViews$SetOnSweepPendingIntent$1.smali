.class Landroid/widget/RemoteViews$SetOnSweepPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->apply(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnSweepPendingIntent;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnSweepPendingIntent;)V
    .locals 0
    .parameter

    .prologue
    .line 468
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSweepPendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 470
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v0, v8

    .line 491
    :goto_1
    return v0

    .line 472
    :pswitch_1
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSweepPendingIntent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->basisPoint:F

    goto :goto_0

    .line 475
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 477
    .local v6, currentPoint:F
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSweepPendingIntent;

    iget v0, v0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->direction:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSweepPendingIntent;

    iget v1, v1, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->basisPoint:F

    sub-float v1, v6, v1

    mul-float/2addr v0, v1

    const/high16 v1, 0x4348

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 480
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnSweepPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    const/high16 v4, 0x1000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move v0, v8

    .line 487
    goto :goto_1

    .line 484
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 485
    .local v7, e:Landroid/content/IntentSender$SendIntentException;
    const-string v0, "RemoteViews"

    const-string v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 470
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
