.class public abstract Lcom/broadcom/bt/service/map/IMapCallback$Stub;
.super Landroid/os/Binder;
.source "IMapCallback.java"

# interfaces
.implements Lcom/broadcom/bt/service/map/IMapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/map/IMapCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/IMapCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.broadcom.bt.service.map.IMapCallback"

.field static final TRANSACTION_onMCEConnected:I = 0x2

.field static final TRANSACTION_onMCEDisconnected:I = 0x3

.field static final TRANSACTION_onMCEGetFolderListing:I = 0x6

.field static final TRANSACTION_onMCEGetMsg:I = 0x9

.field static final TRANSACTION_onMCEGetMsgListing:I = 0x7

.field static final TRANSACTION_onMCEPushMsg:I = 0x8

.field static final TRANSACTION_onMCERegisterForNotification:I = 0x4

.field static final TRANSACTION_onMCESetMessageStatus:I = 0xa

.field static final TRANSACTION_onMCEUpdateInbox:I = 0x5

.field static final TRANSACTION_onMSEStateChanged:I = 0x1

.field static final TRANSACTION_onMsgGetInProgress:I = 0xb

.field static final TRANSACTION_onMsgPushInProgress:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    const-string v0, "com.broadcom.bt.service.map.IMapCallback"

    invoke-virtual {p0, p0, v0}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/map/IMapCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 30
    if-nez p0, :cond_0

    .line 31
    const/4 v1, 0x0

    .line 37
    :goto_0
    return-object v1

    .line 33
    :cond_0
    const-string v1, "com.broadcom.bt.service.map.IMapCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 34
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/broadcom/bt/service/map/IMapCallback;

    if-eqz v1, :cond_1

    .line 35
    check-cast v0, Lcom/broadcom/bt/service/map/IMapCallback;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 37
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/broadcom/bt/service/map/IMapCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/broadcom/bt/service/map/IMapCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 41
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
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
    .line 45
    sparse-switch p1, :sswitch_data_0

    .line 255
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 49
    :sswitch_0
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    const/4 v5, 0x1

    goto :goto_0

    .line 54
    :sswitch_1
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v8

    .line 61
    .local v8, _arg2:B
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V

    .line 62
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v5, 0x1

    goto :goto_0

    .line 67
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:B
    :sswitch_2
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 71
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 73
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 74
    .local v8, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCEConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    const/4 v5, 0x1

    goto :goto_0

    .line 80
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    :sswitch_3
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 84
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 85
    .restart local v7       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCEDisconnected(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    const/4 v5, 0x1

    goto :goto_0

    .line 91
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    :sswitch_4
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 95
    .local v6, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 97
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 99
    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 100
    .local v9, _arg3:Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCERegisterForNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 106
    .end local v6           #_arg0:I
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    :sswitch_5
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 110
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 111
    .restart local v7       #_arg1:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCEUpdateInbox(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 117
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    :sswitch_6
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 121
    .local v6, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 123
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 125
    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 127
    .restart local v9       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 129
    .local v10, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .local v11, _arg5:I
    move-object/from16 v5, p0

    .line 130
    invoke-virtual/range {v5 .. v11}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCEGetFolderListing(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 136
    .end local v6           #_arg0:I
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v10           #_arg4:I
    .end local v11           #_arg5:I
    :sswitch_7
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 140
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 142
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 144
    .local v8, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 146
    .restart local v9       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 148
    .restart local v10       #_arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 150
    .restart local v11       #_arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 152
    .local v12, _arg6:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v13

    .line 154
    .local v13, _arg7:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v14

    .line 156
    .local v14, _arg8:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 158
    .local v15, _arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 160
    .local v16, _arg10:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v17

    .line 162
    .local v17, _arg11:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 164
    .local v18, _arg12:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 166
    .local v19, _arg13:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v20

    .local v20, _arg14:B
    move-object/from16 v5, p0

    .line 167
    invoke-virtual/range {v5 .. v20}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCEGetMsgListing(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V

    .line 168
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 173
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:I
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v10           #_arg4:I
    .end local v11           #_arg5:I
    .end local v12           #_arg6:I
    .end local v13           #_arg7:B
    .end local v14           #_arg8:B
    .end local v15           #_arg9:Ljava/lang/String;
    .end local v16           #_arg10:Ljava/lang/String;
    .end local v17           #_arg11:B
    .end local v18           #_arg12:Ljava/lang/String;
    .end local v19           #_arg13:Ljava/lang/String;
    .end local v20           #_arg14:B
    :sswitch_8
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 177
    .local v6, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 179
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 181
    .local v8, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v9

    .line 183
    .local v9, _arg3:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v10

    .line 185
    .local v10, _arg4:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v11

    .line 187
    .local v11, _arg5:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 189
    .local v12, _arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 191
    .local v13, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .local v14, _arg8:Ljava/lang/String;
    move-object/from16 v5, p0

    .line 192
    invoke-virtual/range {v5 .. v14}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCEPushMsg(ILjava/lang/String;Ljava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 198
    .end local v6           #_arg0:I
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:B
    .end local v10           #_arg4:B
    .end local v11           #_arg5:B
    .end local v12           #_arg6:Ljava/lang/String;
    .end local v13           #_arg7:Ljava/lang/String;
    .end local v14           #_arg8:Ljava/lang/String;
    :sswitch_9
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 202
    .restart local v6       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 204
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 206
    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 208
    .local v9, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 210
    .local v10, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 212
    .local v11, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v12

    .line 214
    .local v12, _arg6:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v13

    .local v13, _arg7:B
    move-object/from16 v5, p0

    .line 215
    invoke-virtual/range {v5 .. v13}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCEGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 221
    .end local v6           #_arg0:I
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v10           #_arg4:Ljava/lang/String;
    .end local v11           #_arg5:Ljava/lang/String;
    .end local v12           #_arg6:B
    .end local v13           #_arg7:B
    :sswitch_a
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 225
    .restart local v6       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 227
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 229
    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 231
    .restart local v9       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 233
    .restart local v10       #_arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v11

    .line 235
    .local v11, _arg5:B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v12

    .restart local v12       #_arg6:B
    move-object/from16 v5, p0

    .line 236
    invoke-virtual/range {v5 .. v12}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMCESetMessageStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V

    .line 237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 242
    .end local v6           #_arg0:I
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v10           #_arg4:Ljava/lang/String;
    .end local v11           #_arg5:B
    .end local v12           #_arg6:B
    :sswitch_b
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMsgGetInProgress()V

    .line 244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 249
    :sswitch_c
    const-string v5, "com.broadcom.bt.service.map.IMapCallback"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/IMapCallback$Stub;->onMsgPushInProgress()V

    .line 251
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 45
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
