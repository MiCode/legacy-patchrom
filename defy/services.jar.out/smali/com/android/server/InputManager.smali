.class public Lcom/android/server/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/InputManager$Callbacks;,
        Lcom/android/server/InputManager$InputDeviceCalibration;,
        Lcom/android/server/InputManager$VirtualKeyDefinition;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final INPUT_EVENT_INJECTION_FAILED:I = 0x2

.field static final INPUT_EVENT_INJECTION_PERMISSION_DENIED:I = 0x1

.field static final INPUT_EVENT_INJECTION_SUCCEEDED:I = 0x0

.field static final INPUT_EVENT_INJECTION_SYNC_NONE:I = 0x0

.field static final INPUT_EVENT_INJECTION_SYNC_WAIT_FOR_FINISH:I = 0x2

.field static final INPUT_EVENT_INJECTION_SYNC_WAIT_FOR_RESULT:I = 0x1

.field static final INPUT_EVENT_INJECTION_TIMED_OUT:I = 0x3

.field public static final KEY_STATE_DOWN:I = 0x1

.field public static final KEY_STATE_UNKNOWN:I = -0x1

.field public static final KEY_STATE_UP:I = 0x0

.field public static final KEY_STATE_VIRTUAL:I = 0x2

.field static final TAG:Ljava/lang/String; = "InputManager"


# instance fields
.field private final mCallbacks:Lcom/android/server/InputManager$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mWindowManagerService:Lcom/android/server/WindowManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/WindowManagerService;)V
    .locals 2
    .parameter "context"
    .parameter "windowManagerService"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/InputManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/InputManager$1;-><init>(Lcom/android/server/InputManager;)V

    iput-object v0, p0, Lcom/android/server/InputManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/android/server/InputManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/InputManager;->mWindowManagerService:Lcom/android/server/WindowManagerService;

    new-instance v0, Lcom/android/server/InputManager$Callbacks;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/InputManager$Callbacks;-><init>(Lcom/android/server/InputManager;Lcom/android/server/InputManager$1;)V

    iput-object v0, p0, Lcom/android/server/InputManager;->mCallbacks:Lcom/android/server/InputManager$Callbacks;

    invoke-direct {p0}, Lcom/android/server/InputManager;->init()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/InputManager;)Lcom/android/server/WindowManagerService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager;->mWindowManagerService:Lcom/android/server/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/InputManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/InputManager;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/InputManager;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$600(I)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-static {p0}, Lcom/android/server/InputManager;->nativeSetCallState(I)V

    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    const-string v0, "InputManager"

    const-string v1, "Initializing input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/InputManager;->mCallbacks:Lcom/android/server/InputManager$Callbacks;

    invoke-static {v0}, Lcom/android/server/InputManager;->nativeInit(Lcom/android/server/InputManager$Callbacks;)V

    return-void
.end method

.method private static native nativeDump()Ljava/lang/String;
.end method

.method private static native nativeGetInputConfiguration(Landroid/content/res/Configuration;)V
.end method

.method private static native nativeGetInputDevice(I)Landroid/view/InputDevice;
.end method

.method private static native nativeGetInputDeviceIds()[I
.end method

.method private static native nativeGetKeyCodeState(III)I
.end method

.method private static native nativeGetScanCodeState(III)I
.end method

.method private static native nativeGetSwitchState(III)I
.end method

.method private static native nativeHasKeys(II[I[Z)Z
.end method

.method private static native nativeInit(Lcom/android/server/InputManager$Callbacks;)V
.end method

.method private static native nativeInjectInputEvent(Landroid/view/InputEvent;IIII)I
.end method

.method private static native nativeRegisterInputChannel(Landroid/view/InputChannel;Z)V
.end method

.method private static native nativeSetCallState(I)V
.end method

.method private static native nativeSetDisplayOrientation(II)V
.end method

.method private static native nativeSetDisplaySize(III)V
.end method

.method private static native nativeSetFocusedApplication(Lcom/android/server/InputApplication;)V
.end method

.method private static native nativeSetInputDispatchMode(ZZ)V
.end method

.method private static native nativeSetInputWindows([Lcom/android/server/InputWindow;)V
.end method

.method private static native nativeStart()V
.end method

.method private static native nativeUnregisterInputChannel(Landroid/view/InputChannel;)V
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .parameter "pw"

    .prologue
    invoke-static {}, Lcom/android/server/InputManager;->nativeDump()Ljava/lang/String;

    move-result-object v0

    .local v0, dumpStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getInputConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/InputManager;->nativeGetInputConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 1
    .parameter "deviceId"

    .prologue
    invoke-static {p1}, Lcom/android/server/InputManager;->nativeGetInputDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    return-object v0
.end method

.method public getInputDeviceIds()[I
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/server/InputManager;->nativeGetInputDeviceIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getKeyCodeState(III)I
    .locals 1
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "keyCode"

    .prologue
    invoke-static {p1, p2, p3}, Lcom/android/server/InputManager;->nativeGetKeyCodeState(III)I

    move-result v0

    return v0
.end method

.method public getScanCodeState(III)I
    .locals 1
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "scanCode"

    .prologue
    invoke-static {p1, p2, p3}, Lcom/android/server/InputManager;->nativeGetScanCodeState(III)I

    move-result v0

    return v0
.end method

.method public getSwitchState(III)I
    .locals 1
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "switchCode"

    .prologue
    invoke-static {p1, p2, p3}, Lcom/android/server/InputManager;->nativeGetSwitchState(III)I

    move-result v0

    return v0
.end method

.method public hasKeys(II[I[Z)Z
    .locals 2
    .parameter "deviceId"
    .parameter "sourceMask"
    .parameter "keyCodes"
    .parameter "keyExists"

    .prologue
    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCodes must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p4, :cond_1

    array-length v0, p4

    array-length v1, p3

    if-ge v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyExists must not be null and must be at least as large as keyCodes."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/InputManager;->nativeHasKeys(II[I[Z)Z

    move-result v0

    return v0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;IIII)I
    .locals 2
    .parameter "event"
    .parameter "injectorPid"
    .parameter "injectorUid"
    .parameter "syncMode"
    .parameter "timeoutMillis"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    if-gez p3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "injectorPid and injectorUid must not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gtz p5, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "timeoutMillis must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/InputManager;->nativeInjectInputEvent(Landroid/view/InputEvent;IIII)I

    move-result v0

    return v0
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 4
    .parameter "inputChannelName"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "inputChannelName must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {p1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .local v0, inputChannels:[Landroid/view/InputChannel;
    aget-object v1, v0, v2

    invoke-static {v1, v3}, Lcom/android/server/InputManager;->nativeRegisterInputChannel(Landroid/view/InputChannel;Z)V

    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    aget-object v1, v0, v3

    return-object v1
.end method

.method public registerInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .parameter "inputChannel"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/InputManager;->nativeRegisterInputChannel(Landroid/view/InputChannel;Z)V

    return-void
.end method

.method public setDisplayOrientation(II)V
    .locals 2
    .parameter "displayId"
    .parameter "rotation"

    .prologue
    if-ltz p2, :cond_0

    const/4 v0, 0x3

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid rotation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1, p2}, Lcom/android/server/InputManager;->nativeSetDisplayOrientation(II)V

    return-void
.end method

.method public setDisplaySize(III)V
    .locals 2
    .parameter "displayId"
    .parameter "width"
    .parameter "height"

    .prologue
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid display id or dimensions."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/android/server/InputManager;->nativeSetDisplaySize(III)V

    return-void
.end method

.method public setFocusedApplication(Lcom/android/server/InputApplication;)V
    .locals 0
    .parameter "application"

    .prologue
    invoke-static {p1}, Lcom/android/server/InputManager;->nativeSetFocusedApplication(Lcom/android/server/InputApplication;)V

    return-void
.end method

.method public setInputDispatchMode(ZZ)V
    .locals 0
    .parameter "enabled"
    .parameter "frozen"

    .prologue
    invoke-static {p1, p2}, Lcom/android/server/InputManager;->nativeSetInputDispatchMode(ZZ)V

    return-void
.end method

.method public setInputWindows([Lcom/android/server/InputWindow;)V
    .locals 0
    .parameter "windows"

    .prologue
    invoke-static {p1}, Lcom/android/server/InputManager;->nativeSetInputWindows([Lcom/android/server/InputWindow;)V

    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    const-string v0, "InputManager"

    const-string v1, "Starting input manager"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/InputManager;->nativeStart()V

    iget-object v0, p0, Lcom/android/server/InputManager;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/InputManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/InputManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/InputManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/server/InputManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/InputManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v0, p0, Lcom/android/server/InputManager;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/InputManager;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method

.method public unregisterInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .parameter "inputChannel"

    .prologue
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputChannel must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/InputManager;->nativeUnregisterInputChannel(Landroid/view/InputChannel;)V

    return-void
.end method
