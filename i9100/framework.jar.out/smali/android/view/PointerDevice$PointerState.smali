.class public Landroid/view/PointerDevice$PointerState;
.super Ljava/lang/Object;
.source "PointerDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PointerDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PointerState"
.end annotation


# instance fields
.field public id:I

.field public pressed:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/view/PointerDevice$PointerState;)V
    .locals 1
    .parameter "other"

    .prologue
    .line 207
    iget v0, p1, Landroid/view/PointerDevice$PointerState;->x:I

    iput v0, p0, Landroid/view/PointerDevice$PointerState;->x:I

    .line 208
    iget v0, p1, Landroid/view/PointerDevice$PointerState;->y:I

    iput v0, p0, Landroid/view/PointerDevice$PointerState;->y:I

    .line 209
    iget v0, p1, Landroid/view/PointerDevice$PointerState;->id:I

    iput v0, p0, Landroid/view/PointerDevice$PointerState;->id:I

    .line 210
    iget-boolean v0, p1, Landroid/view/PointerDevice$PointerState;->pressed:Z

    iput-boolean v0, p0, Landroid/view/PointerDevice$PointerState;->pressed:Z

    .line 211
    return-void
.end method

.method public equals(Landroid/view/PointerDevice$PointerState;)Z
    .locals 2
    .parameter "other"

    .prologue
    .line 214
    iget v0, p0, Landroid/view/PointerDevice$PointerState;->x:I

    iget v1, p1, Landroid/view/PointerDevice$PointerState;->x:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/PointerDevice$PointerState;->y:I

    iget v1, p1, Landroid/view/PointerDevice$PointerState;->y:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/PointerDevice$PointerState;->id:I

    iget v1, p1, Landroid/view/PointerDevice$PointerState;->id:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/view/PointerDevice$PointerState;->pressed:Z

    iget-boolean v1, p1, Landroid/view/PointerDevice$PointerState;->pressed:Z

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
