.class Landroid/widget/RemoteViews$SetOnSweepPendingIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetOnSweepPendingIntent"
.end annotation


# static fields
.field public static final TAG:I = 0x7


# instance fields
.field basisPoint:F

.field direction:I

.field pendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/app/PendingIntent;I)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "pendingIntent"
    .parameter "direction"

    .prologue
    .line 442
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 443
    iput p2, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->viewId:I

    .line 444
    iput-object p3, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 445
    iput p4, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->direction:I

    .line 446
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->basisPoint:F

    .line 447
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    .line 449
    iput-object p1, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 450
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->viewId:I

    .line 451
    invoke-static {p2}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->direction:I

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->basisPoint:F

    .line 454
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 466
    iget v2, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 467
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 468
    new-instance v1, Landroid/widget/RemoteViews$SetOnSweepPendingIntent$1;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$SetOnSweepPendingIntent$1;-><init>(Landroid/widget/RemoteViews$SetOnSweepPendingIntent;)V

    .line 494
    .local v1, touchListener:Landroid/view/View$OnTouchListener;
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 496
    .end local v1           #touchListener:Landroid/view/View$OnTouchListener;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 457
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    iget v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 459
    iget-object v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->pendingIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 460
    iget v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->direction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 461
    iget v0, p0, Landroid/widget/RemoteViews$SetOnSweepPendingIntent;->basisPoint:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 462
    return-void
.end method
