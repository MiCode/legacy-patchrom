.class Landroid/widget/RemoteViews$SetLaunchPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetLaunchPendingIntent;->apply(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetLaunchPendingIntent;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetLaunchPendingIntent;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Landroid/widget/RemoteViews$SetLaunchPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetLaunchPendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f00

    const/4 v3, 0x0

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v9, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 400
    .local v9, appScale:F
    const/4 v1, 0x2

    new-array v11, v1, [I

    .line 401
    .local v11, pos:[I
    invoke-virtual {p1, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 403
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 404
    .local v12, rect:Landroid/graphics/Rect;
    aget v1, v11, v3

    int-to-float v1, v1

    mul-float/2addr v1, v9

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v12, Landroid/graphics/Rect;->left:I

    .line 405
    aget v1, v11, v5

    int-to-float v1, v1

    mul-float/2addr v1, v9

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v12, Landroid/graphics/Rect;->top:I

    .line 406
    aget v1, v11, v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v9

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v12, Landroid/graphics/Rect;->right:I

    .line 407
    aget v1, v11, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    int-to-float v1, v1

    mul-float/2addr v1, v9

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, v12, Landroid/graphics/Rect;->bottom:I

    .line 409
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 410
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v12}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 413
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 414
    .local v0, context:Landroid/content/Context;
    iget-object v1, p0, Landroid/widget/RemoteViews$SetLaunchPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetLaunchPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetLaunchPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/high16 v3, 0x1000

    const/high16 v4, 0x1000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V

    .line 419
    const/4 v1, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.service.statusbar.COLLAPSE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v0, v1, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 422
    .local v13, tPI:Landroid/app/PendingIntent;
    invoke-virtual {v13}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x1000

    const/high16 v7, 0x1000

    const/4 v8, 0x0

    move-object v3, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    .end local v0           #context:Landroid/content/Context;
    .end local v13           #tPI:Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 426
    :catch_0
    move-exception v1

    move-object v10, v1

    .line 427
    .local v10, e:Landroid/content/IntentSender$SendIntentException;
    const-string v1, "RemoteViews"

    const-string v3, "Cannot send pending intent: "

    invoke-static {v1, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
