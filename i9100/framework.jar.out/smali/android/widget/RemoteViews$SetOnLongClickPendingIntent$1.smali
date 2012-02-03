.class Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 220
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 222
    invoke-static {}, Landroid/widget/RemoteViews;->access$100()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->key:Landroid/os/IBinder;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnLongClickPendingIntent;->downPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0x1000

    const/high16 v4, 0x1000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return v7

    .line 230
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 231
    .local v6, e:Landroid/content/IntentSender$SendIntentException;
    const-string v0, "RemoteViews"

    const-string v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
