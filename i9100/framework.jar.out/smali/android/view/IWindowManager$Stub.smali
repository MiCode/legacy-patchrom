.class public abstract Landroid/view/IWindowManager$Stub;
.super Landroid/os/Binder;
.source "IWindowManager.java"

# interfaces
.implements Landroid/view/IWindowManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/IWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IWindowManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.view.IWindowManager"

.field static final TRANSACTION_addAppToken:I = 0xf

.field static final TRANSACTION_addWindowToken:I = 0xd

.field static final TRANSACTION_closeSystemDialogs:I = 0x29

.field static final TRANSACTION_disableKeyguard:I = 0x23

.field static final TRANSACTION_executeAppTransition:I = 0x17

.field static final TRANSACTION_exitKeyguardSecurely:I = 0x25

.field static final TRANSACTION_getAnimationScale:I = 0x2a

.field static final TRANSACTION_getAnimationScales:I = 0x2b

.field static final TRANSACTION_getAppOrientation:I = 0x12

.field static final TRANSACTION_getCurrentDockState:I = 0x44

.field static final TRANSACTION_getDPadKeycodeState:I = 0x37

.field static final TRANSACTION_getDPadScancodeState:I = 0x33

.field static final TRANSACTION_getInputDevice:I = 0x3a

.field static final TRANSACTION_getInputDeviceIds:I = 0x3b

.field static final TRANSACTION_getKeycodeState:I = 0x34

.field static final TRANSACTION_getKeycodeStateForDevice:I = 0x35

.field static final TRANSACTION_getPendingAppTransition:I = 0x15

.field static final TRANSACTION_getRequestedRotation:I = 0x41

.field static final TRANSACTION_getRotation:I = 0x3e

.field static final TRANSACTION_getScancodeState:I = 0x30

.field static final TRANSACTION_getScancodeStateForDevice:I = 0x31

.field static final TRANSACTION_getSwitchState:I = 0x2e

.field static final TRANSACTION_getSwitchStateForDevice:I = 0x2f

.field static final TRANSACTION_getTrackballKeycodeState:I = 0x36

.field static final TRANSACTION_getTrackballScancodeState:I = 0x32

.field static final TRANSACTION_hasKeys:I = 0x39

.field static final TRANSACTION_inKeyguardRestrictedInputMode:I = 0x28

.field static final TRANSACTION_injectInputEventNoWait:I = 0x9

.field static final TRANSACTION_injectKeyEvent:I = 0x6

.field static final TRANSACTION_injectPointerEvent:I = 0x7

.field static final TRANSACTION_injectTrackballEvent:I = 0x8

.field static final TRANSACTION_inputMethodClientHasFocus:I = 0x5

.field static final TRANSACTION_isInputMethodActive:I = 0x40

.field static final TRANSACTION_isLockScreenViewMaking:I = 0x27

.field static final TRANSACTION_isLockScreenViewShowing:I = 0x26

.field static final TRANSACTION_isSystemKeyEventRequested:I = 0x43

.field static final TRANSACTION_isViewServerRunning:I = 0x3

.field static final TRANSACTION_monitorInput:I = 0x38

.field static final TRANSACTION_moveAppToken:I = 0x1e

.field static final TRANSACTION_moveAppTokensToBottom:I = 0x20

.field static final TRANSACTION_moveAppTokensToTop:I = 0x1f

.field static final TRANSACTION_openSession:I = 0x4

.field static final TRANSACTION_overridePendingAppTransition:I = 0x16

.field static final TRANSACTION_pauseKeyDispatching:I = 0xa

.field static final TRANSACTION_prepareAppTransition:I = 0x14

.field static final TRANSACTION_reenableKeyguard:I = 0x24

.field static final TRANSACTION_removeAppToken:I = 0x1d

.field static final TRANSACTION_removeWindowToken:I = 0xe

.field static final TRANSACTION_requestSystemKeyEvent:I = 0x42

.field static final TRANSACTION_resumeKeyDispatching:I = 0xb

.field static final TRANSACTION_setAnimationScale:I = 0x2c

.field static final TRANSACTION_setAnimationScales:I = 0x2d

.field static final TRANSACTION_setAppGroupId:I = 0x10

.field static final TRANSACTION_setAppOrientation:I = 0x11

.field static final TRANSACTION_setAppStartingWindow:I = 0x18

.field static final TRANSACTION_setAppVisibility:I = 0x1a

.field static final TRANSACTION_setAppWillBeHidden:I = 0x19

.field static final TRANSACTION_setCurrentDockState:I = 0x45

.field static final TRANSACTION_setEventDispatching:I = 0xc

.field static final TRANSACTION_setFocusedApp:I = 0x13

.field static final TRANSACTION_setInTouchMode:I = 0x3c

.field static final TRANSACTION_setMouseCursor:I = 0x46

.field static final TRANSACTION_setNewConfiguration:I = 0x22

.field static final TRANSACTION_setRotation:I = 0x3d

.field static final TRANSACTION_startAppFreezingScreen:I = 0x1b

.field static final TRANSACTION_startViewServer:I = 0x1

.field static final TRANSACTION_startVoiceCommandActivity:I = 0x47

.field static final TRANSACTION_stopAppFreezingScreen:I = 0x1c

.field static final TRANSACTION_stopViewServer:I = 0x2

.field static final TRANSACTION_updateOrientationFromAppTokens:I = 0x21

.field static final TRANSACTION_watchRotation:I = 0x3f


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/IWindowManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 29
    if-nez p0, :cond_0

    .line 30
    const/4 v1, 0x0

    .line 36
    :goto_0
    return-object v1

    .line 32
    :cond_0
    const-string v1, "android.view.IWindowManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/IWindowManager;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/view/IWindowManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 36
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/view/IWindowManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/IWindowManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 848
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 48
    :sswitch_0
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :sswitch_1
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->startViewServer(I)Z

    move-result v10

    .line 57
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v10, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 63
    .end local v1           #_arg0:I
    .end local v10           #_result:Z
    :sswitch_2
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->stopViewServer()Z

    move-result v10

    .line 65
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v10, :cond_1

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    const/4 v0, 0x1

    goto :goto_0

    .line 66
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 71
    .end local v10           #_result:Z
    :sswitch_3
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isViewServerRunning()Z

    move-result v10

    .line 73
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v10, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 79
    .end local v10           #_result:Z
    :sswitch_4
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 83
    .local v1, _arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v2

    .line 84
    .local v2, _arg1:Lcom/android/internal/view/IInputContext;
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v10

    .line 85
    .local v10, _result:Landroid/view/IWindowSession;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/view/IWindowSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 87
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :cond_3
    const/4 v0, 0x0

    goto :goto_4

    .line 91
    .end local v1           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v2           #_arg1:Lcom/android/internal/view/IInputContext;
    .end local v10           #_result:Landroid/view/IWindowSession;
    :sswitch_5
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodClient;

    move-result-object v1

    .line 94
    .restart local v1       #_arg0:Lcom/android/internal/view/IInputMethodClient;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z

    move-result v10

    .line 95
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v10, :cond_4

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 96
    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    .line 101
    .end local v1           #_arg0:Lcom/android/internal/view/IInputMethodClient;
    .end local v10           #_result:Z
    :sswitch_6
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 104
    sget-object v0, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 110
    .local v1, _arg0:Landroid/view/KeyEvent;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    move v2, v0

    .line 111
    .local v2, _arg1:Z
    :goto_7
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v10

    .line 112
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    if-eqz v10, :cond_7

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 107
    .end local v1           #_arg0:Landroid/view/KeyEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/KeyEvent;
    goto :goto_6

    .line 110
    :cond_6
    const/4 v0, 0x0

    move v2, v0

    goto :goto_7

    .line 113
    .restart local v2       #_arg1:Z
    .restart local v10       #_result:Z
    :cond_7
    const/4 v0, 0x0

    goto :goto_8

    .line 118
    .end local v1           #_arg0:Landroid/view/KeyEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :sswitch_7
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 121
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 127
    .local v1, _arg0:Landroid/view/MotionEvent;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    move v2, v0

    .line 128
    .restart local v2       #_arg1:Z
    :goto_a
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->injectPointerEvent(Landroid/view/MotionEvent;Z)Z

    move-result v10

    .line 129
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v10, :cond_a

    const/4 v0, 0x1

    :goto_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 124
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/MotionEvent;
    goto :goto_9

    .line 127
    :cond_9
    const/4 v0, 0x0

    move v2, v0

    goto :goto_a

    .line 130
    .restart local v2       #_arg1:Z
    .restart local v10       #_result:Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_b

    .line 135
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :sswitch_8
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 138
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 144
    .restart local v1       #_arg0:Landroid/view/MotionEvent;
    :goto_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    move v2, v0

    .line 145
    .restart local v2       #_arg1:Z
    :goto_d
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->injectTrackballEvent(Landroid/view/MotionEvent;Z)Z

    move-result v10

    .line 146
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v10, :cond_d

    const/4 v0, 0x1

    :goto_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 141
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :cond_b
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/MotionEvent;
    goto :goto_c

    .line 144
    :cond_c
    const/4 v0, 0x0

    move v2, v0

    goto :goto_d

    .line 147
    .restart local v2       #_arg1:Z
    .restart local v10       #_result:Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_e

    .line 152
    .end local v1           #_arg0:Landroid/view/MotionEvent;
    .end local v2           #_arg1:Z
    .end local v10           #_result:Z
    :sswitch_9
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 155
    sget-object v0, Landroid/view/InputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    .line 160
    .local v1, _arg0:Landroid/view/InputEvent;
    :goto_f
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->injectInputEventNoWait(Landroid/view/InputEvent;)Z

    move-result v10

    .line 161
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v10, :cond_f

    const/4 v0, 0x1

    :goto_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 158
    .end local v1           #_arg0:Landroid/view/InputEvent;
    .end local v10           #_result:Z
    :cond_e
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/view/InputEvent;
    goto :goto_f

    .line 162
    .restart local v10       #_result:Z
    :cond_f
    const/4 v0, 0x0

    goto :goto_10

    .line 167
    .end local v1           #_arg0:Landroid/view/InputEvent;
    .end local v10           #_result:Z
    :sswitch_a
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 170
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->pauseKeyDispatching(Landroid/os/IBinder;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 176
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_b
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 179
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->resumeKeyDispatching(Landroid/os/IBinder;)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 185
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_c
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    move v1, v0

    .line 188
    .local v1, _arg0:Z
    :goto_11
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setEventDispatching(Z)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 187
    .end local v1           #_arg0:Z
    :cond_10
    const/4 v0, 0x0

    move v1, v0

    goto :goto_11

    .line 194
    :sswitch_d
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 198
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 199
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->addWindowToken(Landroid/os/IBinder;I)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 205
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_e
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 208
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->removeWindowToken(Landroid/os/IBinder;)V

    .line 209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 214
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_f
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 218
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v2

    .line 220
    .local v2, _arg1:Landroid/view/IApplicationToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 222
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 224
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    move v5, v0

    .local v5, _arg4:Z
    :goto_12
    move-object v0, p0

    .line 225
    invoke-virtual/range {v0 .. v5}, Landroid/view/IWindowManager$Stub;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 226
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 224
    .end local v5           #_arg4:Z
    :cond_11
    const/4 v0, 0x0

    move v5, v0

    goto :goto_12

    .line 231
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/view/IApplicationToken;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:I
    :sswitch_10
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 235
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 236
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 242
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_11
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v1

    .line 246
    .local v1, _arg0:Landroid/view/IApplicationToken;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 247
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppOrientation(Landroid/view/IApplicationToken;I)V

    .line 248
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 253
    .end local v1           #_arg0:Landroid/view/IApplicationToken;
    .end local v2           #_arg1:I
    :sswitch_12
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IApplicationToken$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IApplicationToken;

    move-result-object v1

    .line 256
    .restart local v1       #_arg0:Landroid/view/IApplicationToken;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getAppOrientation(Landroid/view/IApplicationToken;)I

    move-result v10

    .line 257
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 263
    .end local v1           #_arg0:Landroid/view/IApplicationToken;
    .end local v10           #_result:I
    :sswitch_13
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 267
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    move v2, v0

    .line 268
    .local v2, _arg1:Z
    :goto_13
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setFocusedApp(Landroid/os/IBinder;Z)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 267
    .end local v2           #_arg1:Z
    :cond_12
    const/4 v0, 0x0

    move v2, v0

    goto :goto_13

    .line 274
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_14
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 277
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->prepareAppTransition(I)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 283
    .end local v1           #_arg0:I
    :sswitch_15
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getPendingAppTransition()I

    move-result v10

    .line 285
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 291
    .end local v10           #_result:I
    :sswitch_16
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 297
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 298
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->overridePendingAppTransition(Ljava/lang/String;II)V

    .line 299
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 304
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_17
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->executeAppTransition()V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 311
    :sswitch_18
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 315
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 319
    .restart local v3       #_arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    .line 320
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 326
    .local v4, _arg3:Ljava/lang/CharSequence;
    :goto_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 328
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 330
    .local v6, _arg5:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 332
    .local v7, _arg6:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    move v8, v0

    .local v8, _arg7:Z
    :goto_15
    move-object v0, p0

    .line 333
    invoke-virtual/range {v0 .. v8}, Landroid/view/IWindowManager$Stub;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;IILandroid/os/IBinder;Z)V

    .line 334
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 323
    .end local v4           #_arg3:Ljava/lang/CharSequence;
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:Landroid/os/IBinder;
    .end local v8           #_arg7:Z
    :cond_13
    const/4 v4, 0x0

    .restart local v4       #_arg3:Ljava/lang/CharSequence;
    goto :goto_14

    .line 332
    .restart local v5       #_arg4:I
    .restart local v6       #_arg5:I
    .restart local v7       #_arg6:Landroid/os/IBinder;
    :cond_14
    const/4 v0, 0x0

    move v8, v0

    goto :goto_15

    .line 339
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/CharSequence;
    .end local v5           #_arg4:I
    .end local v6           #_arg5:I
    .end local v7           #_arg6:Landroid/os/IBinder;
    :sswitch_19
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 342
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 343
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 348
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_1a
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 352
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    move v2, v0

    .line 353
    .local v2, _arg1:Z
    :goto_16
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 355
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 352
    .end local v2           #_arg1:Z
    :cond_15
    const/4 v0, 0x0

    move v2, v0

    goto :goto_16

    .line 359
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_1b
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 363
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 364
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->startAppFreezingScreen(Landroid/os/IBinder;I)V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 370
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_1c
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 374
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    move v2, v0

    .line 375
    .local v2, _arg1:Z
    :goto_17
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->stopAppFreezingScreen(Landroid/os/IBinder;Z)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 374
    .end local v2           #_arg1:Z
    :cond_16
    const/4 v0, 0x0

    move v2, v0

    goto :goto_17

    .line 381
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_1d
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 383
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 384
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->removeAppToken(Landroid/os/IBinder;)V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 390
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_1e
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 394
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 395
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->moveAppToken(ILandroid/os/IBinder;)V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 401
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    :sswitch_1f
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 404
    .local v9, _arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p0, v9}, Landroid/view/IWindowManager$Stub;->moveAppTokensToTop(Ljava/util/List;)V

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 410
    .end local v9           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_20
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->createBinderArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 413
    .restart local v9       #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {p0, v9}, Landroid/view/IWindowManager$Stub;->moveAppTokensToBottom(Ljava/util/List;)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 419
    .end local v9           #_arg0:Ljava/util/List;,"Ljava/util/List<Landroid/os/IBinder;>;"
    :sswitch_21
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_17

    .line 422
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 428
    .local v1, _arg0:Landroid/content/res/Configuration;
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 429
    .restart local v2       #_arg1:Landroid/os/IBinder;
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v10

    .line 430
    .local v10, _result:Landroid/content/res/Configuration;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 431
    if-eqz v10, :cond_18

    .line 432
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 438
    :goto_19
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 425
    .end local v1           #_arg0:Landroid/content/res/Configuration;
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v10           #_result:Landroid/content/res/Configuration;
    :cond_17
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/res/Configuration;
    goto :goto_18

    .line 436
    .restart local v2       #_arg1:Landroid/os/IBinder;
    .restart local v10       #_result:Landroid/content/res/Configuration;
    :cond_18
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 442
    .end local v1           #_arg0:Landroid/content/res/Configuration;
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v10           #_result:Landroid/content/res/Configuration;
    :sswitch_22
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_19

    .line 445
    sget-object v0, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 450
    .restart local v1       #_arg0:Landroid/content/res/Configuration;
    :goto_1a
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setNewConfiguration(Landroid/content/res/Configuration;)V

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 448
    .end local v1           #_arg0:Landroid/content/res/Configuration;
    :cond_19
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/res/Configuration;
    goto :goto_1a

    .line 456
    .end local v1           #_arg0:Landroid/content/res/Configuration;
    :sswitch_23
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 460
    .local v1, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 467
    .end local v1           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_24
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 470
    .restart local v1       #_arg0:Landroid/os/IBinder;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->reenableKeyguard(Landroid/os/IBinder;)V

    .line 471
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 476
    .end local v1           #_arg0:Landroid/os/IBinder;
    :sswitch_25
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IOnKeyguardExitResult$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IOnKeyguardExitResult;

    move-result-object v1

    .line 479
    .local v1, _arg0:Landroid/view/IOnKeyguardExitResult;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V

    .line 480
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 485
    .end local v1           #_arg0:Landroid/view/IOnKeyguardExitResult;
    :sswitch_26
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isLockScreenViewShowing()Z

    move-result v10

    .line 487
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    if-eqz v10, :cond_1a

    const/4 v0, 0x1

    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 488
    :cond_1a
    const/4 v0, 0x0

    goto :goto_1b

    .line 493
    .end local v10           #_result:Z
    :sswitch_27
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isLockScreenViewMaking()Z

    move-result v10

    .line 495
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    if-eqz v10, :cond_1b

    const/4 v0, 0x1

    :goto_1c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 497
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 496
    :cond_1b
    const/4 v0, 0x0

    goto :goto_1c

    .line 501
    .end local v10           #_result:Z
    :sswitch_28
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 502
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->inKeyguardRestrictedInputMode()Z

    move-result v10

    .line 503
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    if-eqz v10, :cond_1c

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 504
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1d

    .line 509
    .end local v10           #_result:Z
    :sswitch_29
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->closeSystemDialogs(Ljava/lang/String;)V

    .line 513
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 518
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2a
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 520
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 521
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getAnimationScale(I)F

    move-result v10

    .line 522
    .local v10, _result:F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeFloat(F)V

    .line 524
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 528
    .end local v1           #_arg0:I
    .end local v10           #_result:F
    :sswitch_2b
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getAnimationScales()[F

    move-result-object v10

    .line 530
    .local v10, _result:[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 532
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 536
    .end local v10           #_result:[F
    :sswitch_2c
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 538
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 540
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    .line 541
    .local v2, _arg1:F
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setAnimationScale(IF)V

    .line 542
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 547
    .end local v1           #_arg0:I
    .end local v2           #_arg1:F
    :sswitch_2d
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v1

    .line 550
    .local v1, _arg0:[F
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setAnimationScales([F)V

    .line 551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 556
    .end local v1           #_arg0:[F
    :sswitch_2e
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 559
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getSwitchState(I)I

    move-result v10

    .line 560
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 566
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_2f
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 570
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 571
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->getSwitchStateForDevice(II)I

    move-result v10

    .line 572
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 573
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 574
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 578
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v10           #_result:I
    :sswitch_30
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 580
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 581
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getScancodeState(I)I

    move-result v10

    .line 582
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 583
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 588
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_31
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 592
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 593
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->getScancodeStateForDevice(II)I

    move-result v10

    .line 594
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 596
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 600
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v10           #_result:I
    :sswitch_32
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 603
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getTrackballScancodeState(I)I

    move-result v10

    .line 604
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 610
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_33
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 613
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getDPadScancodeState(I)I

    move-result v10

    .line 614
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 615
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 616
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 620
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_34
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 622
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 623
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getKeycodeState(I)I

    move-result v10

    .line 624
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 630
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_35
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 634
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 635
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->getKeycodeStateForDevice(II)I

    move-result v10

    .line 636
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 638
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 642
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v10           #_result:I
    :sswitch_36
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 644
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 645
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getTrackballKeycodeState(I)I

    move-result v10

    .line 646
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 647
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 648
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 652
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_37
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 655
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getDPadKeycodeState(I)I

    move-result v10

    .line 656
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 657
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 658
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 662
    .end local v1           #_arg0:I
    .end local v10           #_result:I
    :sswitch_38
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 665
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v10

    .line 666
    .local v10, _result:Landroid/view/InputChannel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    if-eqz v10, :cond_1d

    .line 668
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/view/InputChannel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 674
    :goto_1e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 672
    :cond_1d
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1e

    .line 678
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v10           #_result:Landroid/view/InputChannel;
    :sswitch_39
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 682
    .local v1, _arg0:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v2

    .line 683
    .local v2, _arg1:[Z
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->hasKeys([I[Z)Z

    move-result v10

    .line 684
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    if-eqz v10, :cond_1e

    const/4 v0, 0x1

    :goto_1f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 686
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 687
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 685
    :cond_1e
    const/4 v0, 0x0

    goto :goto_1f

    .line 691
    .end local v1           #_arg0:[I
    .end local v2           #_arg1:[Z
    .end local v10           #_result:Z
    :sswitch_3a
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 693
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 694
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v10

    .line 695
    .local v10, _result:Landroid/view/InputDevice;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 696
    if-eqz v10, :cond_1f

    .line 697
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/view/InputDevice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 703
    :goto_20
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 701
    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 707
    .end local v1           #_arg0:I
    .end local v10           #_result:Landroid/view/InputDevice;
    :sswitch_3b
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getInputDeviceIds()[I

    move-result-object v10

    .line 709
    .local v10, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 710
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 711
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 715
    .end local v10           #_result:[I
    :sswitch_3c
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    move v1, v0

    .line 718
    .local v1, _arg0:Z
    :goto_21
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setInTouchMode(Z)V

    .line 719
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 717
    .end local v1           #_arg0:Z
    :cond_20
    const/4 v0, 0x0

    move v1, v0

    goto :goto_21

    .line 724
    :sswitch_3d
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 728
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    move v2, v0

    .line 730
    .local v2, _arg1:Z
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 731
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->setRotation(IZI)V

    .line 732
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 728
    .end local v2           #_arg1:Z
    .end local v3           #_arg2:I
    :cond_21
    const/4 v0, 0x0

    move v2, v0

    goto :goto_22

    .line 737
    .end local v1           #_arg0:I
    :sswitch_3e
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 738
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getRotation()I

    move-result v10

    .line 739
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 741
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 745
    .end local v10           #_result:I
    :sswitch_3f
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 747
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IRotationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IRotationWatcher;

    move-result-object v1

    .line 748
    .local v1, _arg0:Landroid/view/IRotationWatcher;
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->watchRotation(Landroid/view/IRotationWatcher;)I

    move-result v10

    .line 749
    .restart local v10       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 755
    .end local v1           #_arg0:Landroid/view/IRotationWatcher;
    .end local v10           #_result:I
    :sswitch_40
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->isInputMethodActive()Z

    move-result v10

    .line 757
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    if-eqz v10, :cond_22

    const/4 v0, 0x1

    :goto_23
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 758
    :cond_22
    const/4 v0, 0x0

    goto :goto_23

    .line 763
    .end local v10           #_result:Z
    :sswitch_41
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getRequestedRotation()I

    move-result v10

    .line 765
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 771
    .end local v10           #_result:I
    :sswitch_42
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 773
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 775
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_23

    .line 776
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 782
    .local v2, _arg1:Landroid/content/ComponentName;
    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    move v3, v0

    .line 783
    .local v3, _arg2:Z
    :goto_25
    invoke-virtual {p0, v1, v2, v3}, Landroid/view/IWindowManager$Stub;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    move-result v10

    .line 784
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    if-eqz v10, :cond_25

    const/4 v0, 0x1

    :goto_26
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 786
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 779
    .end local v2           #_arg1:Landroid/content/ComponentName;
    .end local v3           #_arg2:Z
    .end local v10           #_result:Z
    :cond_23
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/content/ComponentName;
    goto :goto_24

    .line 782
    :cond_24
    const/4 v0, 0x0

    move v3, v0

    goto :goto_25

    .line 785
    .restart local v3       #_arg2:Z
    .restart local v10       #_result:Z
    :cond_25
    const/4 v0, 0x0

    goto :goto_26

    .line 790
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/content/ComponentName;
    .end local v3           #_arg2:Z
    .end local v10           #_result:Z
    :sswitch_43
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 792
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 794
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_26

    .line 795
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 800
    .restart local v2       #_arg1:Landroid/content/ComponentName;
    :goto_27
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v10

    .line 801
    .restart local v10       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    if-eqz v10, :cond_27

    const/4 v0, 0x1

    :goto_28
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 803
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 798
    .end local v2           #_arg1:Landroid/content/ComponentName;
    .end local v10           #_result:Z
    :cond_26
    const/4 v2, 0x0

    .restart local v2       #_arg1:Landroid/content/ComponentName;
    goto :goto_27

    .line 802
    .restart local v10       #_result:Z
    :cond_27
    const/4 v0, 0x0

    goto :goto_28

    .line 807
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Landroid/content/ComponentName;
    .end local v10           #_result:Z
    :sswitch_44
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Landroid/view/IWindowManager$Stub;->getCurrentDockState()I

    move-result v10

    .line 809
    .local v10, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 811
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 815
    .end local v10           #_result:I
    :sswitch_45
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 818
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->setCurrentDockState(I)V

    .line 819
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 824
    .end local v1           #_arg0:I
    :sswitch_46
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 828
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 829
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Landroid/view/IWindowManager$Stub;->setMouseCursor(II)V

    .line 830
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 831
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 835
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_47
    const-string v0, "android.view.IWindowManager"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_28

    .line 838
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 843
    .local v1, _arg0:Landroid/content/Intent;
    :goto_29
    invoke-virtual {p0, v1}, Landroid/view/IWindowManager$Stub;->startVoiceCommandActivity(Landroid/content/Intent;)V

    .line 844
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 845
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 841
    .end local v1           #_arg0:Landroid/content/Intent;
    :cond_28
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/content/Intent;
    goto :goto_29

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
