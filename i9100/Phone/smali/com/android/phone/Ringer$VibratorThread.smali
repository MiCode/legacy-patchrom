.class Lcom/android/phone/Ringer$VibratorThread;
.super Ljava/lang/Thread;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibratorThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method private constructor <init>(Lcom/android/phone/Ringer;)V
    .locals 0
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 296
    :goto_0
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    iget-boolean v0, v0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/phone/Ringer$VibratorThread;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateCall(I)V

    .line 299
    const-wide/16 v0, 0xdac

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 301
    :cond_0
    return-void
.end method
