.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_answerRingingCall:I = 0xa

.field static final TRANSACTION_answerVoIPCall:I = 0x2f

.field static final TRANSACTION_call:I = 0x6

.field static final TRANSACTION_callInVoIP:I = 0x3f

.field static final TRANSACTION_cancelMissedCallsNotification:I = 0x11

.field static final TRANSACTION_changeUARFCN:I = 0x5e

.field static final TRANSACTION_closeIccLogicalChannel:I = 0x5

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_disableApnType:I = 0x1a

.field static final TRANSACTION_disableDataConnectivity:I = 0x1c

.field static final TRANSACTION_disableLocationUpdates:I = 0x18

.field static final TRANSACTION_disableStatusBarforVoIP:I = 0x4d

.field static final TRANSACTION_enableApnType:I = 0x19

.field static final TRANSACTION_enableDataConnectivity:I = 0x1b

.field static final TRANSACTION_enableLocationUpdates:I = 0x17

.field static final TRANSACTION_endCall:I = 0x9

.field static final TRANSACTION_getActivePhoneType:I = 0x23

.field static final TRANSACTION_getActiveVoIPCallsCount:I = 0x4a

.field static final TRANSACTION_getCallState:I = 0x20

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x24

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x25

.field static final TRANSACTION_getCdmaEriText:I = 0x26

.field static final TRANSACTION_getCdmaNeedsProvisioning:I = 0x27

.field static final TRANSACTION_getCellLocation:I = 0x1e

.field static final TRANSACTION_getCurrentVoIPNumber:I = 0x3e

.field static final TRANSACTION_getDataActivity:I = 0x21

.field static final TRANSACTION_getDataNetworkDisable:I = 0x5c

.field static final TRANSACTION_getDataRoamingEnabled:I = 0x57

.field static final TRANSACTION_getDataState:I = 0x22

.field static final TRANSACTION_getHoldVoIPCallsCount:I = 0x4c

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x1f

.field static final TRANSACTION_getNetworkType:I = 0x29

.field static final TRANSACTION_getPhoneServiceState:I = 0x54

.field static final TRANSACTION_getServiceState:I = 0x59

.field static final TRANSACTION_getVoIPCallBaseTime:I = 0x42

.field static final TRANSACTION_getVoIPMute:I = 0x45

.field static final TRANSACTION_getVoiceMessageCount:I = 0x28

.field static final TRANSACTION_handlePinMmi:I = 0x13

.field static final TRANSACTION_hangupVoIPCall:I = 0x30

.field static final TRANSACTION_hasIccCard:I = 0x2a

.field static final TRANSACTION_isAlerting:I = 0x41

.field static final TRANSACTION_isAnyKeyMode:I = 0x2e

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x1d

.field static final TRANSACTION_isDialing:I = 0x50

.field static final TRANSACTION_isIdle:I = 0xe

.field static final TRANSACTION_isOffhook:I = 0xc

.field static final TRANSACTION_isRadioOn:I = 0xf

.field static final TRANSACTION_isRinging:I = 0xd

.field static final TRANSACTION_isRoamingArea:I = 0x5b

.field static final TRANSACTION_isShowingCallScreen:I = 0x53

.field static final TRANSACTION_isSimPermBlocked:I = 0x2b

.field static final TRANSACTION_isSimPinEnabled:I = 0x10

.field static final TRANSACTION_isStartVideoCall:I = 0x52

.field static final TRANSACTION_isVideoCall:I = 0x51

.field static final TRANSACTION_isVoIPActivated:I = 0x3d

.field static final TRANSACTION_isVoIPDialing:I = 0x3c

.field static final TRANSACTION_isVoIPIdle:I = 0x39

.field static final TRANSACTION_isVoIPRingOrDialing:I = 0x3a

.field static final TRANSACTION_isVoIPRinging:I = 0x3b

.field static final TRANSACTION_moveVoIPToTop:I = 0x40

.field static final TRANSACTION_notifyMissedCall:I = 0x4f

.field static final TRANSACTION_openIccLogicalChannel:I = 0x4

.field static final TRANSACTION_reenableStatusBarforVoIP:I = 0x4e

.field static final TRANSACTION_registerForCurrentVoIP:I = 0x2c

.field static final TRANSACTION_sendRequestToRIL:I = 0x55

.field static final TRANSACTION_setActiveVoIPCallsCount:I = 0x49

.field static final TRANSACTION_setDMPort:I = 0x5d

.field static final TRANSACTION_setDataConnectionToggleExt:I = 0x5a

.field static final TRANSACTION_setDataRoamingEnabled:I = 0x56

.field static final TRANSACTION_setDefaultSharedPreferencesForPhone:I = 0x58

.field static final TRANSACTION_setHoldVoIPCallsCount:I = 0x4b

.field static final TRANSACTION_setRadio:I = 0x15

.field static final TRANSACTION_setVoIPCallBaseTime:I = 0x43

.field static final TRANSACTION_setVoIPDialing:I = 0x32

.field static final TRANSACTION_setVoIPDisconnected:I = 0x36

.field static final TRANSACTION_setVoIPDisconnecting:I = 0x35

.field static final TRANSACTION_setVoIPHolding:I = 0x38

.field static final TRANSACTION_setVoIPIdle:I = 0x34

.field static final TRANSACTION_setVoIPInCall:I = 0x33

.field static final TRANSACTION_setVoIPMute:I = 0x47

.field static final TRANSACTION_setVoIPMuteState:I = 0x46

.field static final TRANSACTION_setVoIPRinging:I = 0x31

.field static final TRANSACTION_setVoIPWaiting:I = 0x37

.field static final TRANSACTION_showCallScreen:I = 0x7

.field static final TRANSACTION_showCallScreenWithDialpad:I = 0x8

.field static final TRANSACTION_silenceRinger:I = 0xb

.field static final TRANSACTION_supplyPin:I = 0x12

.field static final TRANSACTION_switchVoIPHoldingAndActive:I = 0x44

.field static final TRANSACTION_toggleRadioOnOff:I = 0x14

.field static final TRANSACTION_transmitIccAPDU:I = 0x3

.field static final TRANSACTION_transmitIccLogicalChannel:I = 0x2

.field static final TRANSACTION_turnOnVoIPSpeaker:I = 0x48

.field static final TRANSACTION_unregisterForCurrentVoIP:I = 0x2d

.field static final TRANSACTION_updateServiceLocation:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .parameter "obj"

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v1, 0x0

    .line 38
    :goto_0
    return-object v1

    .line 34
    :cond_0
    const-string v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 38
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 23
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
    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 873
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 50
    :sswitch_0
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    const/4 v4, 0x1

    goto :goto_0

    .line 55
    :sswitch_1
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 58
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    const/4 v4, 0x1

    goto :goto_0

    .line 64
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 68
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 70
    .local v6, _arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 72
    .local v7, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 74
    .local v8, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 76
    .local v9, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 78
    .local v10, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .local v11, _arg6:Ljava/lang/String;
    move-object/from16 v4, p0

    .line 79
    invoke-virtual/range {v4 .. v11}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 80
    .local v20, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    const/4 v4, 0x1

    goto :goto_0

    .line 86
    .end local v5           #_arg0:I
    .end local v6           #_arg1:I
    .end local v7           #_arg2:I
    .end local v8           #_arg3:I
    .end local v9           #_arg4:I
    .end local v10           #_arg5:I
    .end local v11           #_arg6:Ljava/lang/String;
    .end local v20           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 90
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 92
    .restart local v6       #_arg1:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 94
    .restart local v7       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 96
    .restart local v8       #_arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 98
    .restart local v9       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, _arg5:Ljava/lang/String;
    move-object/from16 v4, p0

    .line 99
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccAPDU(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 100
    .restart local v20       #_result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 106
    .end local v5           #_arg0:I
    .end local v6           #_arg1:I
    .end local v7           #_arg2:I
    .end local v8           #_arg3:I
    .end local v9           #_arg4:I
    .end local v10           #_arg5:Ljava/lang/String;
    .end local v20           #_result:Ljava/lang/String;
    :sswitch_4
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 109
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->openIccLogicalChannel(Ljava/lang/String;)I

    move-result v20

    .line 110
    .local v20, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 116
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v20           #_result:I
    :sswitch_5
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 119
    .local v5, _arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->closeIccLogicalChannel(I)Z

    move-result v20

    .line 120
    .local v20, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    if-eqz v20, :cond_0

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 121
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 126
    .end local v5           #_arg0:I
    .end local v20           #_result:Z
    :sswitch_6
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 135
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_7
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreen()Z

    move-result v20

    .line 137
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v20, :cond_1

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 138
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 143
    .end local v20           #_result:Z
    :sswitch_8
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move v5, v4

    .line 146
    .local v5, _arg0:Z
    :goto_3
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->showCallScreenWithDialpad(Z)Z

    move-result v20

    .line 147
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    if-eqz v20, :cond_3

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 145
    .end local v5           #_arg0:Z
    .end local v20           #_result:Z
    :cond_2
    const/4 v4, 0x0

    move v5, v4

    goto :goto_3

    .line 148
    .restart local v5       #_arg0:Z
    .restart local v20       #_result:Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_4

    .line 153
    .end local v5           #_arg0:Z
    .end local v20           #_result:Z
    :sswitch_9
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v20

    .line 155
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v20, :cond_4

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 156
    :cond_4
    const/4 v4, 0x0

    goto :goto_5

    .line 161
    .end local v20           #_result:Z
    :sswitch_a
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 163
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 168
    :sswitch_b
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 175
    :sswitch_c
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook()Z

    move-result v20

    .line 177
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v20, :cond_5

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 178
    :cond_5
    const/4 v4, 0x0

    goto :goto_6

    .line 183
    .end local v20           #_result:Z
    :sswitch_d
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging()Z

    move-result v20

    .line 185
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v20, :cond_6

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 186
    :cond_6
    const/4 v4, 0x0

    goto :goto_7

    .line 191
    .end local v20           #_result:Z
    :sswitch_e
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle()Z

    move-result v20

    .line 193
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v20, :cond_7

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 194
    :cond_7
    const/4 v4, 0x0

    goto :goto_8

    .line 199
    .end local v20           #_result:Z
    :sswitch_f
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn()Z

    move-result v20

    .line 201
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v20, :cond_8

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 202
    :cond_8
    const/4 v4, 0x0

    goto :goto_9

    .line 207
    .end local v20           #_result:Z
    :sswitch_10
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPinEnabled()Z

    move-result v20

    .line 209
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v20, :cond_9

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 210
    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .line 215
    .end local v20           #_result:Z
    :sswitch_11
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->cancelMissedCallsNotification()V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 222
    :sswitch_12
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 225
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v20

    .line 226
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    if-eqz v20, :cond_a

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 227
    :cond_a
    const/4 v4, 0x0

    goto :goto_b

    .line 232
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v20           #_result:Z
    :sswitch_13
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 235
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v20

    .line 236
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    if-eqz v20, :cond_b

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 238
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 237
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 242
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v20           #_result:Z
    :sswitch_14
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 249
    :sswitch_15
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    move v5, v4

    .line 252
    .local v5, _arg0:Z
    :goto_d
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v20

    .line 253
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v20, :cond_d

    const/4 v4, 0x1

    :goto_e
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 251
    .end local v5           #_arg0:Z
    .end local v20           #_result:Z
    :cond_c
    const/4 v4, 0x0

    move v5, v4

    goto :goto_d

    .line 254
    .restart local v5       #_arg0:Z
    .restart local v20       #_result:Z
    :cond_d
    const/4 v4, 0x0

    goto :goto_e

    .line 259
    .end local v5           #_arg0:Z
    .end local v20           #_result:Z
    :sswitch_16
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 266
    :sswitch_17
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 268
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 269
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 273
    :sswitch_18
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 280
    :sswitch_19
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 283
    .local v5, _arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableApnType(Ljava/lang/String;)I

    move-result v20

    .line 284
    .local v20, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 290
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v20           #_result:I
    :sswitch_1a
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 293
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->disableApnType(Ljava/lang/String;)I

    move-result v20

    .line 294
    .restart local v20       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 300
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v20           #_result:I
    :sswitch_1b
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v20

    .line 302
    .local v20, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 303
    if-eqz v20, :cond_e

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 303
    :cond_e
    const/4 v4, 0x0

    goto :goto_f

    .line 308
    .end local v20           #_result:Z
    :sswitch_1c
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v20

    .line 310
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    if-eqz v20, :cond_f

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 311
    :cond_f
    const/4 v4, 0x0

    goto :goto_10

    .line 316
    .end local v20           #_result:Z
    :sswitch_1d
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v20

    .line 318
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    if-eqz v20, :cond_10

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 319
    :cond_10
    const/4 v4, 0x0

    goto :goto_11

    .line 324
    .end local v20           #_result:Z
    :sswitch_1e
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation()Landroid/os/Bundle;

    move-result-object v20

    .line 326
    .local v20, _result:Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v20, :cond_11

    .line 328
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/4 v4, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 334
    :goto_12
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 332
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 338
    .end local v20           #_result:Landroid/os/Bundle;
    :sswitch_1f
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v22

    .line 340
    .local v22, _result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 342
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 346
    .end local v22           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_20
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v20

    .line 348
    .local v20, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 354
    .end local v20           #_result:I
    :sswitch_21
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v20

    .line 356
    .restart local v20       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 357
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 362
    .end local v20           #_result:I
    :sswitch_22
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v20

    .line 364
    .restart local v20       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 370
    .end local v20           #_result:I
    :sswitch_23
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v20

    .line 372
    .restart local v20       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 378
    .end local v20           #_result:I
    :sswitch_24
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 379
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex()I

    move-result v20

    .line 380
    .restart local v20       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 386
    .end local v20           #_result:I
    :sswitch_25
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode()I

    move-result v20

    .line 388
    .restart local v20       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 394
    .end local v20           #_result:I
    :sswitch_26
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText()Ljava/lang/String;

    move-result-object v20

    .line 396
    .local v20, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 402
    .end local v20           #_result:Ljava/lang/String;
    :sswitch_27
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaNeedsProvisioning()Z

    move-result v20

    .line 404
    .local v20, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    if-eqz v20, :cond_12

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 406
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 405
    :cond_12
    const/4 v4, 0x0

    goto :goto_13

    .line 410
    .end local v20           #_result:Z
    :sswitch_28
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v20

    .line 412
    .local v20, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 418
    .end local v20           #_result:I
    :sswitch_29
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v20

    .line 420
    .restart local v20       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 422
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 426
    .end local v20           #_result:I
    :sswitch_2a
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v20

    .line 428
    .local v20, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v20, :cond_13

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 430
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 429
    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    .line 434
    .end local v20           #_result:Z
    :sswitch_2b
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimPermBlocked()I

    move-result v20

    .line 436
    .local v20, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 438
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 442
    .end local v20           #_result:I
    :sswitch_2c
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 446
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 448
    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 449
    .local v7, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->registerForCurrentVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 455
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v7           #_arg2:Ljava/lang/String;
    :sswitch_2d
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->unregisterForCurrentVoIP()V

    .line 457
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 458
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 462
    :sswitch_2e
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isAnyKeyMode()Z

    move-result v20

    .line 464
    .local v20, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    if-eqz v20, :cond_14

    const/4 v4, 0x1

    :goto_15
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 465
    :cond_14
    const/4 v4, 0x0

    goto :goto_15

    .line 470
    .end local v20           #_result:Z
    :sswitch_2f
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerVoIPCall()Z

    move-result v20

    .line 472
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    if-eqz v20, :cond_15

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 473
    :cond_15
    const/4 v4, 0x0

    goto :goto_16

    .line 478
    .end local v20           #_result:Z
    :sswitch_30
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hangupVoIPCall()Z

    move-result v20

    .line 480
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 481
    if-eqz v20, :cond_16

    const/4 v4, 0x1

    :goto_17
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 482
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 481
    :cond_16
    const/4 v4, 0x0

    goto :goto_17

    .line 486
    .end local v20           #_result:Z
    :sswitch_31
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 487
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPRinging()V

    .line 488
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 493
    :sswitch_32
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 494
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPDialing()V

    .line 495
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 496
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 500
    :sswitch_33
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPInCall()V

    .line 502
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 507
    :sswitch_34
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPIdle()V

    .line 509
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 514
    :sswitch_35
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPDisconnecting()V

    .line 516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 517
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 521
    :sswitch_36
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPDisconnected()V

    .line 523
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 524
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 528
    :sswitch_37
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPWaiting()V

    .line 530
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 531
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 535
    :sswitch_38
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPHolding()V

    .line 537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 542
    :sswitch_39
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPIdle()Z

    move-result v20

    .line 544
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 545
    if-eqz v20, :cond_17

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 546
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 545
    :cond_17
    const/4 v4, 0x0

    goto :goto_18

    .line 550
    .end local v20           #_result:Z
    :sswitch_3a
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPRingOrDialing()Z

    move-result v20

    .line 552
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    if-eqz v20, :cond_18

    const/4 v4, 0x1

    :goto_19
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 554
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 553
    :cond_18
    const/4 v4, 0x0

    goto :goto_19

    .line 558
    .end local v20           #_result:Z
    :sswitch_3b
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPRinging()Z

    move-result v20

    .line 560
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 561
    if-eqz v20, :cond_19

    const/4 v4, 0x1

    :goto_1a
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 561
    :cond_19
    const/4 v4, 0x0

    goto :goto_1a

    .line 566
    .end local v20           #_result:Z
    :sswitch_3c
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPDialing()Z

    move-result v20

    .line 568
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    if-eqz v20, :cond_1a

    const/4 v4, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 569
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1b

    .line 574
    .end local v20           #_result:Z
    :sswitch_3d
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoIPActivated()Z

    move-result v20

    .line 576
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    if-eqz v20, :cond_1b

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 577
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1c

    .line 582
    .end local v20           #_result:Z
    :sswitch_3e
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCurrentVoIPNumber()Ljava/lang/String;

    move-result-object v20

    .line 584
    .local v20, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 586
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 590
    .end local v20           #_result:Ljava/lang/String;
    :sswitch_3f
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 593
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->callInVoIP(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 599
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_40
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->moveVoIPToTop()Z

    move-result v20

    .line 601
    .local v20, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 602
    if-eqz v20, :cond_1c

    const/4 v4, 0x1

    :goto_1d
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 603
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 602
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1d

    .line 607
    .end local v20           #_result:Z
    :sswitch_41
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isAlerting()Z

    move-result v20

    .line 609
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 610
    if-eqz v20, :cond_1d

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 611
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 610
    :cond_1d
    const/4 v4, 0x0

    goto :goto_1e

    .line 615
    .end local v20           #_result:Z
    :sswitch_42
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoIPCallBaseTime()J

    move-result-wide v20

    .line 617
    .local v20, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    move-object/from16 v0, p3

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 619
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 623
    .end local v20           #_result:J
    :sswitch_43
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 626
    .local v18, _arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPCallBaseTime(J)V

    .line 627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 628
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 632
    .end local v18           #_arg0:J
    :sswitch_44
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->switchVoIPHoldingAndActive()Z

    move-result v20

    .line 634
    .local v20, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    if-eqz v20, :cond_1e

    const/4 v4, 0x1

    :goto_1f
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 635
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1f

    .line 640
    .end local v20           #_result:Z
    :sswitch_45
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoIPMute()Z

    move-result v20

    .line 642
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    if-eqz v20, :cond_1f

    const/4 v4, 0x1

    :goto_20
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 644
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 643
    :cond_1f
    const/4 v4, 0x0

    goto :goto_20

    .line 648
    .end local v20           #_result:Z
    :sswitch_46
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, 0x1

    move v5, v4

    .line 651
    .local v5, _arg0:Z
    :goto_21
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPMuteState(Z)V

    .line 652
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 650
    .end local v5           #_arg0:Z
    :cond_20
    const/4 v4, 0x0

    move v5, v4

    goto :goto_21

    .line 657
    :sswitch_47
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    move v5, v4

    .line 660
    .restart local v5       #_arg0:Z
    :goto_22
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoIPMute(Z)Z

    move-result v20

    .line 661
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 662
    if-eqz v20, :cond_22

    const/4 v4, 0x1

    :goto_23
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 663
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 659
    .end local v5           #_arg0:Z
    .end local v20           #_result:Z
    :cond_21
    const/4 v4, 0x0

    move v5, v4

    goto :goto_22

    .line 662
    .restart local v5       #_arg0:Z
    .restart local v20       #_result:Z
    :cond_22
    const/4 v4, 0x0

    goto :goto_23

    .line 667
    .end local v5           #_arg0:Z
    .end local v20           #_result:Z
    :sswitch_48
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 669
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    move v5, v4

    .line 670
    .restart local v5       #_arg0:Z
    :goto_24
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->turnOnVoIPSpeaker(Z)V

    .line 671
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 672
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 669
    .end local v5           #_arg0:Z
    :cond_23
    const/4 v4, 0x0

    move v5, v4

    goto :goto_24

    .line 676
    :sswitch_49
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 679
    .local v5, _arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setActiveVoIPCallsCount(I)V

    .line 680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 685
    .end local v5           #_arg0:I
    :sswitch_4a
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveVoIPCallsCount()I

    move-result v20

    .line 687
    .local v20, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 689
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 693
    .end local v20           #_result:I
    :sswitch_4b
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 696
    .restart local v5       #_arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setHoldVoIPCallsCount(I)V

    .line 697
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 702
    .end local v5           #_arg0:I
    :sswitch_4c
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getHoldVoIPCallsCount()I

    move-result v20

    .line 704
    .restart local v20       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 705
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 706
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 710
    .end local v20           #_result:I
    :sswitch_4d
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableStatusBarforVoIP()V

    .line 712
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 717
    :sswitch_4e
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->reenableStatusBarforVoIP()V

    .line 719
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 720
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 724
    :sswitch_4f
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 728
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 730
    .restart local v6       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 732
    .restart local v7       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    .local v16, _arg3:J
    move-object/from16 v12, p0

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    .line 733
    invoke-virtual/range {v12 .. v17}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 739
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v7           #_arg2:Ljava/lang/String;
    .end local v16           #_arg3:J
    :sswitch_50
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDialing()Z

    move-result v20

    .line 741
    .local v20, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    if-eqz v20, :cond_24

    const/4 v4, 0x1

    :goto_25
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 742
    :cond_24
    const/4 v4, 0x0

    goto :goto_25

    .line 747
    .end local v20           #_result:Z
    :sswitch_51
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCall()Z

    move-result v20

    .line 749
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    if-eqz v20, :cond_25

    const/4 v4, 0x1

    :goto_26
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 750
    :cond_25
    const/4 v4, 0x0

    goto :goto_26

    .line 755
    .end local v20           #_result:Z
    :sswitch_52
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 756
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isStartVideoCall()Z

    move-result v20

    .line 757
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 758
    if-eqz v20, :cond_26

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 758
    :cond_26
    const/4 v4, 0x0

    goto :goto_27

    .line 763
    .end local v20           #_result:Z
    :sswitch_53
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 764
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isShowingCallScreen()Z

    move-result v20

    .line 765
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    if-eqz v20, :cond_27

    const/4 v4, 0x1

    :goto_28
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 766
    :cond_27
    const/4 v4, 0x0

    goto :goto_28

    .line 771
    .end local v20           #_result:Z
    :sswitch_54
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneServiceState()I

    move-result v20

    .line 773
    .local v20, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 779
    .end local v20           #_result:I
    :sswitch_55
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    .line 783
    .local v5, _arg0:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 785
    .local v6, _arg1:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 786
    .local v7, _arg2:I
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->sendRequestToRIL([B[BI)I

    move-result v20

    .line 787
    .restart local v20       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    move-object/from16 v0, p3

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 790
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 794
    .end local v5           #_arg0:[B
    .end local v6           #_arg1:[B
    .end local v7           #_arg2:I
    .end local v20           #_result:I
    :sswitch_56
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_28

    const/4 v4, 0x1

    move v5, v4

    .line 797
    .local v5, _arg0:Z
    :goto_29
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabled(Z)V

    .line 798
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 799
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 796
    .end local v5           #_arg0:Z
    :cond_28
    const/4 v4, 0x0

    move v5, v4

    goto :goto_29

    .line 803
    :sswitch_57
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataRoamingEnabled()Z

    move-result v20

    .line 805
    .local v20, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 806
    if-eqz v20, :cond_29

    const/4 v4, 0x1

    :goto_2a
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 807
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 806
    :cond_29
    const/4 v4, 0x0

    goto :goto_2a

    .line 811
    .end local v20           #_result:Z
    :sswitch_58
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 813
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 815
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    const/4 v4, 0x1

    move v6, v4

    .line 816
    .local v6, _arg1:Z
    :goto_2b
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setDefaultSharedPreferencesForPhone(Ljava/lang/String;Z)V

    .line 817
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 815
    .end local v6           #_arg1:Z
    :cond_2a
    const/4 v4, 0x0

    move v6, v4

    goto :goto_2b

    .line 822
    .end local v5           #_arg0:Ljava/lang/String;
    :sswitch_59
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceState()I

    move-result v20

    .line 824
    .local v20, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 830
    .end local v20           #_result:I
    :sswitch_5a
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 831
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataConnectionToggleExt()I

    move-result v20

    .line 832
    .restart local v20       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 833
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 834
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 838
    .end local v20           #_result:I
    :sswitch_5b
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isRoamingArea()Z

    move-result v20

    .line 840
    .local v20, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    if-eqz v20, :cond_2b

    const/4 v4, 0x1

    :goto_2c
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 842
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 841
    :cond_2b
    const/4 v4, 0x0

    goto :goto_2c

    .line 846
    .end local v20           #_result:Z
    :sswitch_5c
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 847
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkDisable()Z

    move-result v20

    .line 848
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    if-eqz v20, :cond_2c

    const/4 v4, 0x1

    :goto_2d
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 849
    :cond_2c
    const/4 v4, 0x0

    goto :goto_2d

    .line 854
    .end local v20           #_result:Z
    :sswitch_5d
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 857
    .restart local v5       #_arg0:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDMPort(Ljava/lang/String;)Z

    move-result v20

    .line 858
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    if-eqz v20, :cond_2d

    const/4 v4, 0x1

    :goto_2e
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 859
    :cond_2d
    const/4 v4, 0x0

    goto :goto_2e

    .line 864
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v20           #_result:Z
    :sswitch_5e
    const-string v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 866
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 867
    .local v5, _arg0:I
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->changeUARFCN(I)Z

    move-result v20

    .line 868
    .restart local v20       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    if-eqz v20, :cond_2e

    const/4 v4, 0x1

    :goto_2f
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 869
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2f

    .line 46
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
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
