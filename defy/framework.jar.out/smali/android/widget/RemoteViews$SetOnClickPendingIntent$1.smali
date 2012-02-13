.class Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;
.super Ljava/lang/Object;
.source "RemoteViews.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/RemoteViews$SetOnClickPendingIntent;->apply(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntent;


# direct methods
.method constructor <init>(Landroid/widget/RemoteViews$SetOnClickPendingIntent;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/high16 v3, 0x3f00

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .local v6, appScale:F
    const/4 v0, 0x2

    new-array v8, v0, [I

    .local v8, pos:[I
    invoke-virtual {p1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    .local v9, rect:Landroid/graphics/Rect;
    aget v0, v8, v1

    int-to-float v0, v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v9, Landroid/graphics/Rect;->left:I

    aget v0, v8, v4

    int-to-float v0, v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v9, Landroid/graphics/Rect;->top:I

    aget v0, v8, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v9, Landroid/graphics/Rect;->right:I

    aget v0, v8, v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v6

    add-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/RemoteViews$SetOnClickPendingIntent$1;->this$1:Landroid/widget/RemoteViews$SetOnClickPendingIntent;

    iget-object v1, v1, Landroid/widget/RemoteViews$SetOnClickPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    const/high16 v3, 0x1000

    const/high16 v4, 0x1000

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, e:Landroid/content/IntentSender$SendIntentException;
    const-string v0, "RemoteViews"

    const-string v1, "Cannot send pending intent: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
