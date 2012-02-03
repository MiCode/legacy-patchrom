.class public abstract Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;
.super Landroid/os/Binder;
.source "IFmReceiverCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/fm/IFmReceiverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.fm.IFmReceiverCallback"

.field static final TRANSACTION_onAudioModeEvent:I = 0x5

.field static final TRANSACTION_onAudioPathEvent:I = 0x6

.field static final TRANSACTION_onEstimateNflEvent:I = 0x8

.field static final TRANSACTION_onLiveAudioQualityEvent:I = 0x9

.field static final TRANSACTION_onRdsDataEvent:I = 0x4

.field static final TRANSACTION_onRdsModeEvent:I = 0x3

.field static final TRANSACTION_onSeekCompleteEvent:I = 0x2

.field static final TRANSACTION_onStatusEvent:I = 0x1

.field static final TRANSACTION_onVolumeEvent:I = 0xa

.field static final TRANSACTION_onWorldRegionEvent:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "com.broadcom.bt.service.fm.IFmReceiverCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmReceiverCallback;
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
    const-string v1, "com.broadcom.bt.service.fm.IFmReceiverCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/broadcom/bt/service/fm/IFmReceiverCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 9
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 166
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :sswitch_0
    const-string v0, "com.broadcom.bt.service.fm.IFmReceiverCallback"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v0, "com.broadcom.bt.service.fm.IFmReceiverCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 57
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v3, v0

    .line 59
    .local v3, _arg2:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 61
    .local v4, _arg3:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 65
    .local v6, _arg5:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 67
    .local v7, _arg6:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v8, v0

    .local v8, _arg7:Z
    :goto_2
    move-object v0, p0

    .line 68
    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->onStatusEvent(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    const/4 v0, 0x1

    goto :goto_0

    .line 57
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_arg6:Ljava/lang/String;
    .end local v8           #_arg7:Z
    :cond_0
    const/4 v0, 0x0

    move v3, v0

    goto :goto_1

    .line 67
    .restart local v3       #_arg2:Z
    .restart local v4       #_arg3:I
    .restart local v5       #_arg4:Ljava/lang/String;
    .restart local v6       #_arg5:Ljava/lang/String;
    .restart local v7       #_arg6:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    move v8, v0

    goto :goto_2

    .line 74
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Z
    .end local v4           #_arg3:I
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_arg6:Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.broadcom.bt.service.fm.IFmReceiverCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 78
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v3, v0

    .line 81
    .restart local v3       #_arg2:Z
    :goto_3
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->onSeekCompleteEvent(IIZ)V

    .line 82
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    const/4 v0, 0x1

    goto :goto_0

    .line 80
    .end local v3           #_arg2:Z
    :cond_2
    const/4 v0, 0x0

    move v3, v0

    goto :goto_3

    .line 87
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_3
    const-string v0, "com.broadcom.bt.service.fm.IFmReceiverCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 91
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 92
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->onRdsModeEvent(II)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_4
    const-string v0, "com.broadcom.bt.service.fm.IFmReceiverCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 102
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2       #_arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->onRdsDataEvent(IILjava/lang/String;)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 111
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_5
    const-string v0, "com.broadcom.bt.service.fm.IFmReceiverCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 114
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->onAudioModeEvent(I)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 120
    .end local v1           #_arg0:I
    :sswitch_6
    const-string v0, "com.broadcom.bt.service.fm.IFmReceiverCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 123
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->onAudioPathEvent(I)V

    .line 124
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 129
    .end local v1           #_arg0:I
    :sswitch_7
    const-string v0, "com.broadcom.bt.service.fm.IFmReceiverCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 132
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->onWorldRegionEvent(I)V

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 138
    .end local v1           #_arg0:I
    :sswitch_8
    const-string v0, "com.broadcom.bt.service.fm.IFmReceiverCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->onEstimateNflEvent(I)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 147
    .end local v1           #_arg0:I
    :sswitch_9
    const-string v0, "com.broadcom.bt.service.fm.IFmReceiverCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 150
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->onLiveAudioQualityEvent(I)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 156
    .end local v1           #_arg0:I
    :sswitch_a
    const-string v0, "com.broadcom.bt.service.fm.IFmReceiverCallback"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 160
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 161
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/fm/IFmReceiverCallback$Stub;->onVolumeEvent(II)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 42
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
