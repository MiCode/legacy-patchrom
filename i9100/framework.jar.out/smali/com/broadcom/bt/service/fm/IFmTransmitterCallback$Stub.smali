.class public abstract Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub;
.super Landroid/os/Binder;
.source "IFmTransmitterCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.fm.IFmTransmitterCallback"

.field static final TRANSACTION_onBestChannelEvent:I = 0x7

.field static final TRANSACTION_onChannelStatusEvent:I = 0x6

.field static final TRANSACTION_onFmTransmitterDisabledEvent:I = 0x2

.field static final TRANSACTION_onFmTransmitterEnabledEvent:I = 0x1

.field static final TRANSACTION_onSetTxFrequencyEvent:I = 0x5

.field static final TRANSACTION_onSetTxPowerEvent:I = 0x4

.field static final TRANSACTION_onStatusEvent:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.broadcom.bt.service.fm.IFmTransmitterCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_0
    return-object v1

    .line 30
    :cond_0
    const-string v1, "com.broadcom.bt.service.fm.IFmTransmitterCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v5, 0x1

    const-string v6, "com.broadcom.bt.service.fm.IFmTransmitterCallback"

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v4, "com.broadcom.bt.service.fm.IFmTransmitterCallback"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 47
    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "com.broadcom.bt.service.fm.IFmTransmitterCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub;->onFmTransmitterEnabledEvent(I)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 56
    goto :goto_0

    .line 60
    .end local v0           #_arg0:I
    :sswitch_2
    const-string v4, "com.broadcom.bt.service.fm.IFmTransmitterCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub;->onFmTransmitterDisabledEvent(I)V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 65
    goto :goto_0

    .line 69
    .end local v0           #_arg0:I
    :sswitch_3
    const-string v4, "com.broadcom.bt.service.fm.IFmTransmitterCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub;->onStatusEvent(II)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 76
    goto :goto_0

    .line 80
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_4
    const-string v4, "com.broadcom.bt.service.fm.IFmTransmitterCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v5

    .line 85
    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub;->onSetTxPowerEvent(IZ)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 87
    goto :goto_0

    .line 84
    .end local v1           #_arg1:Z
    :cond_0
    const/4 v4, 0x0

    move v1, v4

    goto :goto_1

    .line 91
    .end local v0           #_arg0:I
    :sswitch_5
    const-string v4, "com.broadcom.bt.service.fm.IFmTransmitterCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub;->onSetTxFrequencyEvent(II)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 98
    goto :goto_0

    .line 102
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_6
    const-string v4, "com.broadcom.bt.service.fm.IFmTransmitterCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 108
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub;->onChannelStatusEvent(III)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 111
    goto/16 :goto_0

    .line 115
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    :sswitch_7
    const-string v4, "com.broadcom.bt.service.fm.IFmTransmitterCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 119
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 121
    .restart local v1       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 123
    .local v2, _arg2:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 124
    .local v3, _arg3:[I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmTransmitterCallback$Stub;->onBestChannelEvent(II[I[I)V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 126
    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
