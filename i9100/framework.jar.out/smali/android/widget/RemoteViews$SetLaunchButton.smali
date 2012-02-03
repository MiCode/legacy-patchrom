.class Landroid/widget/RemoteViews$SetLaunchButton;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetLaunchButton"
.end annotation


# static fields
.field public static final PRESS:I = 0x1

.field public static final RELEASE:I = 0x0

.field public static final TAG:I = 0x6


# instance fields
.field isPress:I

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field viewId:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;I)V
    .locals 1
    .parameter
    .parameter "id"

    .prologue
    .line 296
    iput-object p1, p0, Landroid/widget/RemoteViews$SetLaunchButton;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 297
    iput p2, p0, Landroid/widget/RemoteViews$SetLaunchButton;->viewId:I

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/RemoteViews$SetLaunchButton;->isPress:I

    .line 299
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .parameter
    .parameter "parcel"

    .prologue
    .line 301
    iput-object p1, p0, Landroid/widget/RemoteViews$SetLaunchButton;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 302
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetLaunchButton;->viewId:I

    .line 303
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetLaunchButton;->isPress:I

    .line 304
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)V
    .locals 3
    .parameter "root"

    .prologue
    .line 314
    iget v2, p0, Landroid/widget/RemoteViews$SetLaunchButton;->viewId:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 315
    .local v0, target:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 316
    new-instance v1, Landroid/widget/RemoteViews$SetLaunchButton$1;

    invoke-direct {v1, p0}, Landroid/widget/RemoteViews$SetLaunchButton$1;-><init>(Landroid/widget/RemoteViews$SetLaunchButton;)V

    .line 361
    .local v1, touchListener:Landroid/view/View$OnTouchListener;
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 363
    .end local v1           #touchListener:Landroid/view/View$OnTouchListener;
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 307
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    iget v0, p0, Landroid/widget/RemoteViews$SetLaunchButton;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget v0, p0, Landroid/widget/RemoteViews$SetLaunchButton;->isPress:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    return-void
.end method
