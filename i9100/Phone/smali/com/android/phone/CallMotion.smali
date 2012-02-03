.class public Lcom/android/phone/CallMotion;
.super Ljava/lang/Object;
.source "CallMotion.java"


# static fields
.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionType:I

.field private mPhoneApp:Lcom/android/phone/PhoneApp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "motionType"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/phone/CallMotion$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallMotion$1;-><init>(Lcom/android/phone/CallMotion;)V

    iput-object v0, p0, Lcom/android/phone/CallMotion;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 62
    iput-object p1, p0, Lcom/android/phone/CallMotion;->mContext:Landroid/content/Context;

    .line 63
    iput p2, p0, Lcom/android/phone/CallMotion;->mMotionType:I

    .line 64
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallMotion;->mPhoneApp:Lcom/android/phone/PhoneApp;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallMotion;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/android/phone/CallMotion;->mMotionType:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallMotion;)Lcom/android/phone/PhoneApp;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/phone/CallMotion;->mPhoneApp:Lcom/android/phone/PhoneApp;

    return-object v0
.end method


# virtual methods
.method startMotionCatch()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "CallMotion"

    const-string v1, "startMotionCatch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/phone/CallMotion;->mContext:Landroid/content/Context;

    const-string v1, "motion_recognition"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 73
    :cond_0
    sget-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/CallMotion;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;)V

    .line 74
    return-void
.end method

.method stopMotionCatch()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "CallMotion"

    const-string v1, "stopMotionCatch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/android/phone/CallMotion;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/phone/CallMotion;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 81
    :cond_0
    return-void
.end method
