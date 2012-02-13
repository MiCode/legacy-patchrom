.class public abstract Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;
.super Landroid/os/Binder;
.source "ISoundRecorderService.java"

# interfaces
.implements Lcom/motorola/soundrecorder/ISoundRecorderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/soundrecorder/ISoundRecorderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/soundrecorder/ISoundRecorderService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.soundrecorder.ISoundRecorderService"

.field static final TRANSACTION_currentLowerLimit:I = 0x8

.field static final TRANSACTION_diskSpaceAvailable:I = 0x7

.field static final TRANSACTION_getMaxAmplitude:I = 0x5

.field static final TRANSACTION_getProgress:I = 0x3

.field static final TRANSACTION_getRemainingTime:I = 0x6

.field static final TRANSACTION_getSamplePath:I = 0x9

.field static final TRANSACTION_getState:I = 0x4

.field static final TRANSACTION_startRecording:I = 0x1

.field static final TRANSACTION_stopRecording:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/soundrecorder/ISoundRecorderService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/soundrecorder/ISoundRecorderService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/motorola/soundrecorder/ISoundRecorderService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
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
    const/4 v9, 0x1

    const-string v10, "com.motorola.soundrecorder.ISoundRecorderService"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v9

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 51
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 55
    .local v3, _arg2:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg4:Ljava/lang/String;
    move-object v0, p0

    .line 58
    invoke-virtual/range {v0 .. v6}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->startRecording(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 59
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v9

    .line 61
    goto :goto_0

    .line 65
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:J
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_2
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->stopRecording()V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v9

    .line 68
    goto :goto_0

    .line 72
    :sswitch_3
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->getProgress()J

    move-result-wide v7

    .line 74
    .local v7, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v9

    .line 76
    goto :goto_0

    .line 80
    .end local v7           #_result:J
    :sswitch_4
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->getState()I

    move-result v7

    .line 82
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v9

    .line 84
    goto :goto_0

    .line 88
    .end local v7           #_result:I
    :sswitch_5
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->getMaxAmplitude()I

    move-result v7

    .line 90
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v9

    .line 92
    goto :goto_0

    .line 96
    .end local v7           #_result:I
    :sswitch_6
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->getRemainingTime()J

    move-result-wide v7

    .line 98
    .local v7, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    move v0, v9

    .line 100
    goto :goto_0

    .line 104
    .end local v7           #_result:J
    :sswitch_7
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->diskSpaceAvailable(Ljava/lang/String;)I

    move-result v7

    .line 108
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v9

    .line 110
    goto/16 :goto_0

    .line 114
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v7           #_result:I
    :sswitch_8
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->currentLowerLimit()I

    move-result v7

    .line 116
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v9

    .line 118
    goto/16 :goto_0

    .line 122
    .end local v7           #_result:I
    :sswitch_9
    const-string v0, "com.motorola.soundrecorder.ISoundRecorderService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->getSamplePath()Ljava/lang/String;

    move-result-object v7

    .line 124
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v9

    .line 126
    goto/16 :goto_0

    .line 38
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
