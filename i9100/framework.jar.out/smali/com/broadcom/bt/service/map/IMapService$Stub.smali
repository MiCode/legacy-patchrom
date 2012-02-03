.class public abstract Lcom/broadcom/bt/service/map/IMapService$Stub;
.super Landroid/os/Binder;
.source "IMapService.java"

# interfaces
.implements Lcom/broadcom/bt/service/map/IMapService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/IMapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/IMapService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.map.IMapService"

.field static final TRANSACTION_disableProvider:I = 0xe

.field static final TRANSACTION_enableProvider:I = 0xd

.field static final TRANSACTION_enumRegisteredProviders:I = 0xc

.field static final TRANSACTION_folderListingResponse:I = 0x6

.field static final TRANSACTION_getMsgResponse:I = 0x9

.field static final TRANSACTION_isRegistered:I = 0xf

.field static final TRANSACTION_msgListingResponse:I = 0x7

.field static final TRANSACTION_msgPushResponse:I = 0x8

.field static final TRANSACTION_notifyClient:I = 0x5

.field static final TRANSACTION_notifyRegistrationResponse:I = 0xb

.field static final TRANSACTION_registerDSProvider:I = 0x1

.field static final TRANSACTION_setMsgStatusResponse:I = 0xa

.field static final TRANSACTION_startMSEInstance:I = 0x3

.field static final TRANSACTION_stopMSEInstance:I = 0x4

.field static final TRANSACTION_unregisterDSProvider:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/map/IMapService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/map/IMapService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v1, 0x0

    .line 35
    :goto_0
    return-object v1

    .line 31
    :cond_0
    const-string v1, "com.broadcom.bt.service.map.IMapService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/map/IMapService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/broadcom/bt/service/map/IMapService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 35
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/map/IMapService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/map/IMapService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 292
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 47
    :sswitch_0
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 56
    .local v1, _arg0:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, _arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v6, v0

    .line 66
    .local v6, _arg5:Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v7, v0

    .line 68
    .local v7, _arg6:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 70
    .local v8, _arg7:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/map/IMapCallback;

    move-result-object v9

    .local v9, _arg8:Lcom/broadcom/bt/service/map/IMapCallback;
    move-object v0, p0

    .line 71
    invoke-virtual/range {v0 .. v9}, Lcom/broadcom/bt/service/map/IMapService$Stub;->registerDSProvider(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    .end local v6           #_arg5:Z
    .end local v7           #_arg6:Z
    .end local v8           #_arg7:[Ljava/lang/String;
    .end local v9           #_arg8:Lcom/broadcom/bt/service/map/IMapCallback;
    :cond_0
    const/4 v0, 0x0

    move v6, v0

    goto :goto_1

    .line 66
    .restart local v6       #_arg5:Z
    :cond_1
    const/4 v0, 0x0

    move v7, v0

    goto :goto_2

    .line 77
    .end local v1           #_arg0:B
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Z
    :sswitch_2
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/map/IMapService$Stub;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v0, 0x1

    goto :goto_0

    .line 88
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_3
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 93
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/map/IMapService$Stub;->startMSEInstance(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_4
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 103
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 104
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/map/IMapService$Stub;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 110
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    :sswitch_5
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v3

    .line 118
    .local v3, _arg2:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 120
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 122
    .restart local v5       #_arg4:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 124
    .local v6, _arg5:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v7

    .local v7, _arg6:B
    move-object v0, p0

    .line 125
    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/IMapService$Stub;->notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    .line 126
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 131
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:B
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:Ljava/lang/String;
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_arg6:B
    :sswitch_6
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 137
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 141
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 143
    .local v5, _arg4:B
    sget-object v0, Lcom/broadcom/bt/service/map/FolderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/broadcom/bt/service/map/FolderInfo;

    .local v6, _arg5:[Lcom/broadcom/bt/service/map/FolderInfo;
    move-object v0, p0

    .line 144
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/IMapService$Stub;->folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 150
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:B
    .end local v6           #_arg5:[Lcom/broadcom/bt/service/map/FolderInfo;
    :sswitch_7
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 154
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 156
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 158
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 160
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 162
    .restart local v5       #_arg4:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, _arg5:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v7

    .line 166
    .restart local v7       #_arg6:B
    sget-object v0, Lcom/broadcom/bt/service/map/MessageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/broadcom/bt/service/map/MessageInfo;

    .local v8, _arg7:[Lcom/broadcom/bt/service/map/MessageInfo;
    move-object v0, p0

    .line 167
    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/IMapService$Stub;->msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)V

    .line 168
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 173
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:B
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_arg6:B
    .end local v8           #_arg7:[Lcom/broadcom/bt/service/map/MessageInfo;
    :sswitch_8
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 177
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 179
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 183
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 185
    .restart local v5       #_arg4:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg5:Ljava/lang/String;
    move-object v0, p0

    .line 186
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/IMapService$Stub;->msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 192
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:B
    .end local v6           #_arg5:Ljava/lang/String;
    :sswitch_9
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 196
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 198
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 200
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 202
    .restart local v4       #_arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 204
    .restart local v5       #_arg4:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg5:Ljava/lang/String;
    move-object v0, p0

    .line 205
    invoke-virtual/range {v0 .. v6}, Lcom/broadcom/bt/service/map/IMapService$Stub;->getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 211
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:B
    .end local v6           #_arg5:Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 215
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 217
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 219
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 221
    .local v4, _arg3:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v5

    .line 223
    .restart local v5       #_arg4:B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 225
    .restart local v6       #_arg5:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg6:Ljava/lang/String;
    move-object v0, p0

    .line 226
    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/IMapService$Stub;->setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 232
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:B
    .end local v5           #_arg4:B
    .end local v6           #_arg5:Ljava/lang/String;
    .end local v7           #_arg6:Ljava/lang/String;
    :sswitch_b
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 236
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 238
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 240
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v4

    .line 241
    .restart local v4       #_arg3:B
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/IMapService$Stub;->notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)V

    .line 242
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 247
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:B
    :sswitch_c
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/IMapService$Stub;->enumRegisteredProviders()[Ljava/lang/String;

    move-result-object v10

    .line 249
    .local v10, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 255
    .end local v10           #_result:[Ljava/lang/String;
    :sswitch_d
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 261
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 262
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/map/IMapService$Stub;->enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 268
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_e
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 272
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 274
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 275
    .restart local v3       #_arg2:Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/broadcom/bt/service/map/IMapService$Stub;->disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 281
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    :sswitch_f
    const-string v0, "com.broadcom.bt.service.map.IMapService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 286
    .restart local v2       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v1, v2}, Lcom/broadcom/bt/service/map/IMapService$Stub;->isRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    .line 287
    .local v10, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    if-eqz v10, :cond_2

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 288
    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
