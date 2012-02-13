.class public Landroid/graphics/Interpolator;
.super Ljava/lang/Object;
.source "Interpolator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Interpolator$Result;
    }
.end annotation


# instance fields
.field private mFrameCount:I

.field private mValueCount:I

.field private final native_instance:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "valueCount"

    .prologue
    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    iput v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    invoke-static {p1, v0}, Landroid/graphics/Interpolator;->nativeConstructor(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Interpolator;->native_instance:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "valueCount"
    .parameter "frameCount"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    iput p2, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    invoke-static {p1, p2}, Landroid/graphics/Interpolator;->nativeConstructor(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Interpolator;->native_instance:I

    return-void
.end method

.method private static native nativeConstructor(II)I
.end method

.method private static native nativeDestructor(I)V
.end method

.method private static native nativeReset(III)V
.end method

.method private static native nativeSetKeyFrame(III[F[F)V
.end method

.method private static native nativeSetRepeatMirror(IFZ)V
.end method

.method private static native nativeTimeToValues(II[F)I
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/graphics/Interpolator;->native_instance:I

    invoke-static {v0}, Landroid/graphics/Interpolator;->nativeDestructor(I)V

    return-void
.end method

.method public final getKeyFrameCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    return v0
.end method

.method public final getValueCount()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/graphics/Interpolator;->mValueCount:I

    return v0
.end method

.method public reset(I)V
    .locals 1
    .parameter "valueCount"

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Interpolator;->reset(II)V

    return-void
.end method

.method public reset(II)V
    .locals 1
    .parameter "valueCount"
    .parameter "frameCount"

    .prologue
    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    iput p2, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    iget v0, p0, Landroid/graphics/Interpolator;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Interpolator;->nativeReset(III)V

    return-void
.end method

.method public setKeyFrame(II[F)V
    .locals 1
    .parameter "index"
    .parameter "msec"
    .parameter "values"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Interpolator;->setKeyFrame(II[F[F)V

    return-void
.end method

.method public setKeyFrame(II[F[F)V
    .locals 2
    .parameter "index"
    .parameter "msec"
    .parameter "values"
    .parameter "blend"

    .prologue
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    array-length v0, p3

    iget v1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    if-ge v0, v1, :cond_2

    new-instance v0, Ljava/lang/ArrayStoreException;

    invoke-direct {v0}, Ljava/lang/ArrayStoreException;-><init>()V

    throw v0

    :cond_2
    if-eqz p4, :cond_3

    array-length v0, p4

    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    new-instance v0, Ljava/lang/ArrayStoreException;

    invoke-direct {v0}, Ljava/lang/ArrayStoreException;-><init>()V

    throw v0

    :cond_3
    iget v0, p0, Landroid/graphics/Interpolator;->native_instance:I

    invoke-static {v0, p1, p2, p3, p4}, Landroid/graphics/Interpolator;->nativeSetKeyFrame(III[F[F)V

    return-void
.end method

.method public setRepeatMirror(FZ)V
    .locals 1
    .parameter "repeatCount"
    .parameter "mirror"

    .prologue
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/graphics/Interpolator;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Interpolator;->nativeSetRepeatMirror(IFZ)V

    :cond_0
    return-void
.end method

.method public timeToValues(I[F)Landroid/graphics/Interpolator$Result;
    .locals 2
    .parameter "msec"
    .parameter "values"

    .prologue
    if-eqz p2, :cond_0

    array-length v0, p2

    iget v1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/ArrayStoreException;

    invoke-direct {v0}, Ljava/lang/ArrayStoreException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Landroid/graphics/Interpolator;->native_instance:I

    invoke-static {v0, p1, p2}, Landroid/graphics/Interpolator;->nativeTimeToValues(II[F)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Landroid/graphics/Interpolator$Result;->NORMAL:Landroid/graphics/Interpolator$Result;

    goto :goto_0

    :pswitch_1
    sget-object v0, Landroid/graphics/Interpolator$Result;->FREEZE_START:Landroid/graphics/Interpolator$Result;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public timeToValues([F)Landroid/graphics/Interpolator$Result;
    .locals 2
    .parameter "values"

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Interpolator;->timeToValues(I[F)Landroid/graphics/Interpolator$Result;

    move-result-object v0

    return-object v0
.end method
