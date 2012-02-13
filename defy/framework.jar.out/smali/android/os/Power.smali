.class public Landroid/os/Power;
.super Ljava/lang/Object;
.source "Power.java"


# static fields
.field public static final BRIGHTNESS_DIM:I = 0x14

.field public static final BRIGHTNESS_LOW_BATTERY:I = 0xa

.field public static final BRIGHTNESS_OFF:I = 0x0

.field public static final BRIGHTNESS_ON:I = 0xff

.field public static final FULL_WAKE_LOCK:I = 0x2

.field public static final LOW_BATTERY_THRESHOLD:I = 0xa

.field public static final PARTIAL_WAKE_LOCK:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native acquireWakeLock(ILjava/lang/String;)V
.end method

.method public static reboot(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-static {p0}, Landroid/os/Power;->rebootNative(Ljava/lang/String;)V

    return-void
.end method

.method private static native rebootNative(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native releaseWakeLock(Ljava/lang/String;)V
.end method

.method public static native setDeepSleepState(Z)I
.end method

.method public static native setLastUserActivityTimeout(J)I
.end method

.method public static native setScreenState(Z)I
.end method

.method public static native shutdown()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
