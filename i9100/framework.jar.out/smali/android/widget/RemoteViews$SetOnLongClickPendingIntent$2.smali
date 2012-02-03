.class Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->apply(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const-string v9, "RemoteViews"

    const-string v8, "Cannot send pending intent: "

    .line 240
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    return v7

    .line 242
    :pswitch_0
    invoke-static {}, Landroid/widget/RemoteViews;->access$100()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 245
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-static {}, Landroid/widget/RemoteViews;->access$100()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Landroid/widget/RemoteViews;->access$100()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    const/high16 v4, 0x1000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 256
    .local v6, e:Landroid/content/IntentSender$SendIntentException;
    const-string v0, "RemoteViews"

    const-string v0, "Cannot send pending intent: "

    invoke-static {v9, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 263
    .end local v6           #e:Landroid/content/IntentSender$SendIntentException;
    :pswitch_2
    invoke-static {}, Landroid/widget/RemoteViews;->access$100()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {}, Landroid/widget/RemoteViews;->access$100()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$2;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->upPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    const/high16 v4, 0x1000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 272
    :catch_1
    move-exception v0

    move-object v6, v0

    .line 273
    .restart local v6       #e:Landroid/content/IntentSender$SendIntentException;
    const-string v0, "RemoteViews"

    const-string v0, "Cannot send pending intent: "

    invoke-static {v9, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
