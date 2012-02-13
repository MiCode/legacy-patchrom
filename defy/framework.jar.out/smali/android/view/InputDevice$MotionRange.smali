.class public final Landroid/view/InputDevice$MotionRange;
.super Ljava/lang/Object;
.source "InputDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/InputDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MotionRange"
.end annotation


# instance fields
.field private mFlat:F

.field private mFuzz:F

.field private mMax:F

.field private mMin:F


# direct methods
.method private constructor <init>(FFFF)V
    .locals 0
    .parameter "min"
    .parameter "max"
    .parameter "flat"
    .parameter "fuzz"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    iput p2, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    iput p3, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    iput p4, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    return-void
.end method

.method synthetic constructor <init>(FFFFLandroid/view/InputDevice$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/InputDevice$MotionRange;-><init>(FFFF)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/InputDevice$MotionRange;)F
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    return v0
.end method

.method static synthetic access$400(Landroid/view/InputDevice$MotionRange;)F
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    return v0
.end method

.method static synthetic access$500(Landroid/view/InputDevice$MotionRange;)F
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    return v0
.end method

.method static synthetic access$600(Landroid/view/InputDevice$MotionRange;)F
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    return v0
.end method


# virtual methods
.method public getFlat()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mFlat:F

    return v0
.end method

.method public getFuzz()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mFuzz:F

    return v0
.end method

.method public getMax()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    return v0
.end method

.method public getMin()F
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    return v0
.end method

.method public getRange()F
    .locals 2

    .prologue
    iget v0, p0, Landroid/view/InputDevice$MotionRange;->mMax:F

    iget v1, p0, Landroid/view/InputDevice$MotionRange;->mMin:F

    sub-float/2addr v0, v1

    return v0
.end method
