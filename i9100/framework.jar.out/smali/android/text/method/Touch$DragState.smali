.class Landroid/text/method/Touch$DragState;
.super Ljava/lang/Object;
.source "Touch.java"

# interfaces
.implements Landroid/text/NoCopySpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/method/Touch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DragState"
.end annotation


# instance fields
.field public mFarEnough:Z

.field public mScrollX:I

.field public mScrollY:I

.field public mUsed:Z

.field public mX:F

.field public mY:F


# direct methods
.method public constructor <init>(FFII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "scrollX"
    .parameter "scrollY"

    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput p1, p0, Landroid/text/method/Touch$DragState;->mX:F

    .line 210
    iput p2, p0, Landroid/text/method/Touch$DragState;->mY:F

    .line 211
    iput p3, p0, Landroid/text/method/Touch$DragState;->mScrollX:I

    .line 212
    iput p4, p0, Landroid/text/method/Touch$DragState;->mScrollY:I

    .line 213
    return-void
.end method
