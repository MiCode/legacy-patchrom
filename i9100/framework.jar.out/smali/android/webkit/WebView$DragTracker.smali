.class public Landroid/webkit/WebView$DragTracker;
.super Ljava/lang/Object;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragTracker"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapChange(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bm"

    .prologue
    .line 6489
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 6490
    return-void
.end method

.method public onStartDrag(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 6483
    return-void
.end method

.method public onStopDrag()V
    .locals 0

    .prologue
    .line 6488
    return-void
.end method

.method public onStretchChange(FF)Z
    .locals 1
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 6486
    const/4 v0, 0x0

    return v0
.end method
