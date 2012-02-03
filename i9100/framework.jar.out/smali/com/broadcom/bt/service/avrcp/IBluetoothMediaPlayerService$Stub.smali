.class public abstract Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;
.super Landroid/os/Binder;
.source "IBluetoothMediaPlayerService.java"

# interfaces
.implements Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

.field static final TRANSACTION_duration:I = 0x8

.field static final TRANSACTION_enqueue:I = 0x10

.field static final TRANSACTION_getAlbumId:I = 0xd

.field static final TRANSACTION_getAlbumName:I = 0xc

.field static final TRANSACTION_getArtistId:I = 0xf

.field static final TRANSACTION_getArtistName:I = 0xe

.field static final TRANSACTION_getAudioId:I = 0x14

.field static final TRANSACTION_getPath:I = 0x13

.field static final TRANSACTION_getPlayStatus:I = 0x19

.field static final TRANSACTION_getQueue:I = 0x11

.field static final TRANSACTION_getQueuePosition:I = 0x1

.field static final TRANSACTION_getRepeatMode:I = 0x18

.field static final TRANSACTION_getShuffleMode:I = 0x16

.field static final TRANSACTION_getTrackName:I = 0xb

.field static final TRANSACTION_isPlaying:I = 0x2

.field static final TRANSACTION_next:I = 0x7

.field static final TRANSACTION_pause:I = 0x4

.field static final TRANSACTION_play:I = 0x5

.field static final TRANSACTION_position:I = 0x9

.field static final TRANSACTION_prev:I = 0x6

.field static final TRANSACTION_seek:I = 0xa

.field static final TRANSACTION_setQueuePosition:I = 0x12

.field static final TRANSACTION_setRepeatMode:I = 0x17

.field static final TRANSACTION_setShuffleMode:I = 0x15

.field static final TRANSACTION_stop:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;
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
    const-string v1, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 8
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
    const/4 v6, 0x1

    const-string v7, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 249
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->getQueuePosition()I

    move-result v3

    .line 49
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 51
    goto :goto_0

    .line 55
    .end local v3           #_result:I
    :sswitch_2
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->isPlaying()Z

    move-result v3

    .line 57
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v3, :cond_0

    move v5, v6

    :goto_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 59
    goto :goto_0

    .line 58
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 63
    .end local v3           #_result:Z
    :sswitch_3
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->stop()V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 66
    goto :goto_0

    .line 70
    :sswitch_4
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->pause()V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 73
    goto :goto_0

    .line 77
    :sswitch_5
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->play()V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 80
    goto :goto_0

    .line 84
    :sswitch_6
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->prev()V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 87
    goto :goto_0

    .line 91
    :sswitch_7
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->next()V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 94
    goto :goto_0

    .line 98
    :sswitch_8
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->duration()J

    move-result-wide v3

    .line 100
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 102
    goto :goto_0

    .line 106
    .end local v3           #_result:J
    :sswitch_9
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->position()J

    move-result-wide v3

    .line 108
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 110
    goto/16 :goto_0

    .line 114
    .end local v3           #_result:J
    :sswitch_a
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 117
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->seek(J)J

    move-result-wide v3

    .line 118
    .restart local v3       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 120
    goto/16 :goto_0

    .line 124
    .end local v0           #_arg0:J
    .end local v3           #_result:J
    :sswitch_b
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 128
    goto/16 :goto_0

    .line 132
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 134
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 136
    goto/16 :goto_0

    .line 140
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_d
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->getAlbumId()J

    move-result-wide v3

    .line 142
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 144
    goto/16 :goto_0

    .line 148
    .end local v3           #_result:J
    :sswitch_e
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 152
    goto/16 :goto_0

    .line 156
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_f
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->getArtistId()J

    move-result-wide v3

    .line 158
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 160
    goto/16 :goto_0

    .line 164
    .end local v3           #_result:J
    :sswitch_10
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    .line 168
    .local v0, _arg0:[J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 169
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->enqueue([JI)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 171
    goto/16 :goto_0

    .line 175
    .end local v0           #_arg0:[J
    .end local v2           #_arg1:I
    :sswitch_11
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->getQueue()I

    move-result v3

    .line 177
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 179
    goto/16 :goto_0

    .line 183
    .end local v3           #_result:I
    :sswitch_12
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->setQueuePosition(I)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 188
    goto/16 :goto_0

    .line 192
    .end local v0           #_arg0:I
    :sswitch_13
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 196
    goto/16 :goto_0

    .line 200
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_14
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->getAudioId()J

    move-result-wide v3

    .line 202
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 204
    goto/16 :goto_0

    .line 208
    .end local v3           #_result:J
    :sswitch_15
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 211
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->setShuffleMode(I)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 213
    goto/16 :goto_0

    .line 217
    .end local v0           #_arg0:I
    :sswitch_16
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->getShuffleMode()I

    move-result v3

    .line 219
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 221
    goto/16 :goto_0

    .line 225
    .end local v3           #_result:I
    :sswitch_17
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->setRepeatMode(I)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 230
    goto/16 :goto_0

    .line 234
    .end local v0           #_arg0:I
    :sswitch_18
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->getRepeatMode()I

    move-result v3

    .line 236
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 238
    goto/16 :goto_0

    .line 242
    .end local v3           #_result:I
    :sswitch_19
    const-string v5, "com.broadcom.bt.service.avrcp.IBluetoothMediaPlayerService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/broadcom/bt/service/avrcp/IBluetoothMediaPlayerService$Stub;->getPlayStatus()J

    move-result-wide v3

    .line 244
    .local v3, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    move v5, v6

    .line 246
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
