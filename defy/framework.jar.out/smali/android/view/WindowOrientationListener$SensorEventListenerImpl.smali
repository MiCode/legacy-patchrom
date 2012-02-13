.class Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SensorEventListenerImpl"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ACCELERATING_LOWPASS_ALPHA:F = 0.0f

.field private static final ACCELERATING_TIME_CONSTANT_MS:I = 0x7d0

#the value of this static final field might be set in the static constructor
.field private static final DEFAULT_LOWPASS_ALPHA:F = 0.0f

.field private static final DEFAULT_TIME_CONSTANT_MS:I = 0x64

.field private static final INTERNAL_TO_SURFACE_ROTATION:[I = null

.field private static final MAX_DEVIATION_FROM_GRAVITY:F = 1.5f

.field private static final MAX_TILT:I = 0x4b

.field private static final MAX_TRANSITION_TILT:[I = null

.field private static final MIN_ABS_ACCELERATION:F = 1.5f

.field private static final PARTIAL_TILT:I = 0x32

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final ROTATE_TO:[[I = null

.field private static final ROTATE_TO_WITH_180:[[I = null

.field private static final ROTATION_0:I = 0x0

.field private static final ROTATION_180:I = 0x3

.field private static final ROTATION_270:I = 0x2

.field private static final ROTATION_90:I = 0x1

.field private static final SAMPLING_PERIOD_MS:I = 0xc8

.field private static final SURFACE_TO_INTERNAL_ROTATION:[I = null

.field private static final THRESHOLDS:[[[I = null

.field private static final THRESHOLDS_WITH_180:[[[I = null

#the value of this static final field might be set in the static constructor
.field private static final TILTED_LOWPASS_ALPHA:F = 0.0f

.field private static final TILTED_TIME_CONSTANT_MS:I = 0x1f4

.field private static final _DATA_X:I = 0x0

.field private static final _DATA_Y:I = 0x1

.field private static final _DATA_Z:I = 0x2


# instance fields
.field private final ALIAS_ROTATIONS:[I

.field private mAccelerationDistrust:I

.field private mAllow180Rotation:Z

.field private mOrientationAngle:F

.field private mOrientationListener:Landroid/view/WindowOrientationListener;

.field private mRotation:I

.field private mTiltAngle:F

.field private mTiltDistrust:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->INTERNAL_TO_SURFACE_ROTATION:[I

    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->SURFACE_TO_INTERNAL_ROTATION:[I

    new-array v0, v5, [[[I

    new-array v1, v3, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v4, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v3

    aput-object v1, v0, v7

    new-array v1, v4, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v1, v3

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v1, v1, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v1, v4

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->THRESHOLDS:[[[I

    new-array v0, v5, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_10

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v3

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_12

    aput-object v1, v0, v4

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ROTATE_TO:[[I

    new-array v0, v5, [[[I

    new-array v1, v4, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v1, v3

    aput-object v1, v0, v6

    new-array v1, v5, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    new-array v1, v5, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v1, v4

    aput-object v1, v0, v3

    new-array v1, v5, [[I

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v1, v6

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v1, v7

    new-array v2, v3, [I

    fill-array-data v2, :array_20

    aput-object v2, v1, v3

    new-array v2, v3, [I

    fill-array-data v2, :array_21

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->THRESHOLDS_WITH_180:[[[I

    new-array v0, v5, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v7

    new-array v1, v5, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v3

    new-array v1, v5, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v4

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ROTATE_TO_WITH_180:[[I

    new-array v0, v5, [I

    fill-array-data v0, :array_26

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TRANSITION_TILT:[I

    const/16 v0, 0x64

    invoke-static {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->computeLowpassAlpha(I)F

    move-result v0

    sput v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->DEFAULT_LOWPASS_ALPHA:F

    const/16 v0, 0x1f4

    invoke-static {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->computeLowpassAlpha(I)F

    move-result v0

    sput v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILTED_LOWPASS_ALPHA:F

    const/16 v0, 0x7d0

    invoke-static {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->computeLowpassAlpha(I)F

    move-result v0

    sput v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ACCELERATING_LOWPASS_ALPHA:F

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x3ct 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xb4t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0xc3t 0x0t 0x0t 0x0t
        0x3bt 0x1t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x3bt 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x4at 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    :array_b
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
    .end array-data

    :array_c
    .array-data 0x4
        0x87t 0x0t 0x0t 0x0t
        0xe1t 0x0t 0x0t 0x0t
    .end array-data

    :array_d
    .array-data 0x4
        0xe1t 0x0t 0x0t 0x0t
        0x3bt 0x1t 0x0t 0x0t
    .end array-data

    :array_e
    .array-data 0x4
        0x3bt 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    :array_f
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_10
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_11
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_12
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_13
    .array-data 0x4
        0x3ct 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
    .end array-data

    :array_14
    .array-data 0x4
        0xa5t 0x0t 0x0t 0x0t
        0xc3t 0x0t 0x0t 0x0t
    .end array-data

    :array_15
    .array-data 0x4
        0xc3t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    :array_16
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    :array_17
    .array-data 0x4
        0xa5t 0x0t 0x0t 0x0t
        0xc3t 0x0t 0x0t 0x0t
    .end array-data

    :array_18
    .array-data 0x4
        0xc3t 0x0t 0x0t 0x0t
        0x3bt 0x1t 0x0t 0x0t
    .end array-data

    :array_19
    .array-data 0x4
        0x3bt 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    :array_1a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    :array_1b
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0xa5t 0x0t 0x0t 0x0t
    .end array-data

    :array_1c
    .array-data 0x4
        0xa5t 0x0t 0x0t 0x0t
        0xc3t 0x0t 0x0t 0x0t
    .end array-data

    :array_1d
    .array-data 0x4
        0x4at 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    :array_1e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
    .end array-data

    :array_1f
    .array-data 0x4
        0x2dt 0x0t 0x0t 0x0t
        0x87t 0x0t 0x0t 0x0t
    .end array-data

    :array_20
    .array-data 0x4
        0xe1t 0x0t 0x0t 0x0t
        0x3bt 0x1t 0x0t 0x0t
    .end array-data

    :array_21
    .array-data 0x4
        0x3bt 0x1t 0x0t 0x0t
        0x68t 0x1t 0x0t 0x0t
    .end array-data

    :array_22
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_23
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_24
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_25
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_26
    .array-data 0x4
        0x4bt 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x41t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/WindowOrientationListener;)V
    .locals 3
    .parameter "orientationListener"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ALIAS_ROTATIONS:[I

    iput-boolean v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAllow180Rotation:Z

    iput v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    iput v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltAngle:F

    iput v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    iput v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    iput v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltDistrust:I

    iput-object p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private calculateNewRotation(FF)V
    .locals 8
    .parameter "orientation"
    .parameter "tiltAngle"

    .prologue
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAllow180Rotation:Z

    .local v0, allow180Rotation:Z
    if-eqz v0, :cond_2

    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->THRESHOLDS_WITH_180:[[[I

    iget v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget-object v5, v5, v6

    move-object v4, v5

    .local v4, thresholdRanges:[[I
    :goto_0
    const/4 v3, -0x1

    .local v3, row:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_0

    aget-object v5, v4, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_3

    aget-object v5, v4, v1

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_3

    move v3, v1

    :cond_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_4

    :cond_1
    :goto_2
    return-void

    .end local v1           #i:I
    .end local v3           #row:I
    .end local v4           #thresholdRanges:[[I
    :cond_2
    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->THRESHOLDS:[[[I

    iget v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget-object v5, v5, v6

    move-object v4, v5

    goto :goto_0

    .restart local v1       #i:I
    .restart local v3       #row:I
    .restart local v4       #thresholdRanges:[[I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ROTATE_TO_WITH_180:[[I

    iget v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget-object v5, v5, v6

    aget v5, v5, v3

    move v2, v5

    .local v2, rotation:I
    :goto_3
    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->MAX_TRANSITION_TILT:[I

    aget v5, v5, v2

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-gtz v5, :cond_1

    iput v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    sget-object v6, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->INTERNAL_TO_SURFACE_ROTATION:[I

    iget v7, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/view/WindowOrientationListener;->onOrientationChanged(I)V

    goto :goto_2

    .end local v2           #rotation:I
    :cond_5
    sget-object v5, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ROTATE_TO:[[I

    iget v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget-object v5, v5, v6

    aget v5, v5, v3

    move v2, v5

    goto :goto_3
.end method

.method private checkFullyTilted(F)V
    .locals 3
    .parameter "absoluteTilt"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    const/high16 v0, 0x4296

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    :goto_0
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltDistrust:I

    if-ge v0, v2, :cond_0

    iput v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltDistrust:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    if-ne v0, v1, :cond_2

    const/high16 v0, 0x42b4

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    goto :goto_0

    :cond_2
    const/high16 v0, 0x4387

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltDistrust:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltDistrust:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltDistrust:I

    goto :goto_1
.end method

.method private static computeLowpassAlpha(I)F
    .locals 2
    .parameter "timeConstantMs"

    .prologue
    const/high16 v0, 0x4348

    add-int/lit16 v1, p0, 0xc8

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private computeNewOrientation(FF)F
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    neg-float v1, p1

    float-to-double v1, v1

    float-to-double v3, p2

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    neg-double v1, v1

    double-to-float v1, v1

    const v2, 0x42652ee1

    mul-float v0, v1, v2

    .local v0, orientationAngle:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/high16 v1, 0x43b4

    add-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method private filterOrientation(FF)V
    .locals 5
    .parameter "absoluteTilt"
    .parameter "orientationAngle"

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x43b4

    sget v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->DEFAULT_LOWPASS_ALPHA:F

    .local v0, alpha:F
    iget v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    if-le v2, v3, :cond_3

    sget v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ACCELERATING_LOWPASS_ALPHA:F

    :cond_0
    :goto_0
    iget v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    sub-float v1, p2, v2

    .local v1, deltaOrientation:F
    const/high16 v2, 0x4334

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    sub-float/2addr p2, v4

    :cond_1
    :goto_1
    iget v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    invoke-direct {p0, p2, v2, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowpassFilter(FFF)F

    move-result v2

    iput v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    iget v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_6

    iget v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    sub-float/2addr v2, v4

    iput v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    :cond_2
    :goto_2
    return-void

    .end local v1           #deltaOrientation:F
    :cond_3
    const/high16 v2, 0x4248

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_4

    iget v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    if-ne v2, v3, :cond_0

    :cond_4
    sget v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILTED_LOWPASS_ALPHA:F

    goto :goto_0

    .restart local v1       #deltaOrientation:F
    :cond_5
    const/high16 v2, -0x3ccc

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    add-float/2addr p2, v4

    goto :goto_1

    :cond_6
    iget v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    add-float/2addr v2, v4

    iput v2, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    goto :goto_2
.end method

.method private handleAccelerationDistrust(F)V
    .locals 2
    .parameter "deviation"

    .prologue
    const/high16 v0, 0x3fc0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    if-lez v0, :cond_0

    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    goto :goto_0
.end method

.method private lowpassFilter(FFF)F
    .locals 2
    .parameter "newValue"
    .parameter "oldValue"
    .parameter "alpha"

    .prologue
    mul-float v0, p3, p1

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p3

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    return v0
.end method

.method private tiltAngle(FF)F
    .locals 2
    .parameter "z"
    .parameter "magnitude"

    .prologue
    div-float v0, p1, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    return v0
.end method

.method private vectorMagnitude(FFF)F
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    mul-float v0, p1, p1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    mul-float v1, p3, p3

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method


# virtual methods
.method getCurrentRotation(I)I
    .locals 2
    .parameter "lastRotation"

    .prologue
    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltDistrust:I

    if-lez v0, :cond_0

    sget-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->SURFACE_TO_INTERNAL_ROTATION:[I

    aget v0, v0, p1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    :cond_0
    sget-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->INTERNAL_TO_SURFACE_ROTATION:[I

    iget v1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mRotation:I

    aget v0, v0, v1

    return v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v6, v9, v10

    .local v6, x:F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x1

    aget v7, v9, v10

    .local v7, y:F
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x2

    aget v8, v9, v10

    .local v8, z:F
    invoke-direct {p0, v6, v7, v8}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->vectorMagnitude(FFF)F

    move-result v3

    .local v3, magnitude:F
    const v9, 0x411ce80a

    sub-float v9, v3, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .local v2, deviation:F
    invoke-direct {p0, v2}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->handleAccelerationDistrust(F)V

    const/high16 v9, 0x3fc0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/high16 v1, 0x3f80

    .local v1, alpha:F
    iget v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAccelerationDistrust:I

    if-lez v9, :cond_2

    sget v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->ACCELERATING_LOWPASS_ALPHA:F

    :cond_2
    invoke-direct {p0, v8, v3}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->tiltAngle(FF)F

    move-result v5

    .local v5, newTiltAngle:F
    iget v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltAngle:F

    invoke-direct {p0, v5, v9, v1}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->lowpassFilter(FFF)F

    move-result v9

    iput v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltAngle:F

    iget v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltAngle:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .local v0, absoluteTilt:F
    invoke-direct {p0, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->checkFullyTilted(F)V

    iget v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mTiltDistrust:I

    if-gtz v9, :cond_0

    invoke-direct {p0, v6, v7}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->computeNewOrientation(FF)F

    move-result v4

    .local v4, newOrientationAngle:F
    invoke-direct {p0, v0, v4}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->filterOrientation(FF)V

    iget v9, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationAngle:F

    invoke-direct {p0, v9, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->calculateNewRotation(FF)V

    goto :goto_0
.end method

.method setAllow180Rotation(Z)V
    .locals 0
    .parameter "allowed"

    .prologue
    iput-boolean p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mAllow180Rotation:Z

    return-void
.end method
