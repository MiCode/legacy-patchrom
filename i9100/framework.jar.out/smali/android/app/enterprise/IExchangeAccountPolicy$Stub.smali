.class public abstract Landroid/app/enterprise/IExchangeAccountPolicy$Stub;
.super Landroid/os/Binder;
.source "IExchangeAccountPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IExchangeAccountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IExchangeAccountPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IExchangeAccountPolicy"

.field static final TRANSACTION_addNewAccount:I = 0x1

.field static final TRANSACTION_deleteAccount:I = 0x14

.field static final TRANSACTION_getAccountDetails:I = 0x13

.field static final TRANSACTION_getAccountId:I = 0x12

.field static final TRANSACTION_sendAccountsChangedBroadcast:I = 0x15

.field static final TRANSACTION_setAcceptAllCertificates:I = 0x5

.field static final TRANSACTION_setAccountBaseParameters:I = 0x2

.field static final TRANSACTION_setAccountName:I = 0x11

.field static final TRANSACTION_setAlwaysVibrateOnEmailNotification:I = 0x6

.field static final TRANSACTION_setAsDefaultAccount:I = 0x10

.field static final TRANSACTION_setClientAuthCert:I = 0xb

.field static final TRANSACTION_setPassword:I = 0x8

.field static final TRANSACTION_setPastDaysToSync:I = 0xc

.field static final TRANSACTION_setProtocolVersion:I = 0x9

.field static final TRANSACTION_setSSL:I = 0x3

.field static final TRANSACTION_setSenderName:I = 0xe

.field static final TRANSACTION_setServerPathPrefix:I = 0xf

.field static final TRANSACTION_setSignature:I = 0xa

.field static final TRANSACTION_setSilentVibrateOnEmailNotification:I = 0x7

.field static final TRANSACTION_setSyncInterval:I = 0xd

.field static final TRANSACTION_setTLS:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.IExchangeAccountPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;
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
    const-string v1, "android.app.enterprise.IExchangeAccountPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/enterprise/IExchangeAccountPolicy;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/enterprise/IExchangeAccountPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 39
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

    .line 338
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 46
    :sswitch_0
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v5, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 55
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 59
    .local v8, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 63
    .local v10, _arg4:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 65
    .local v11, _arg5:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v12, v5

    .line 67
    .local v12, _arg6:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 69
    .local v13, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 71
    .local v14, _arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 73
    .local v15, _arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move/from16 v16, v5

    .line 75
    .local v16, _arg10:Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    move/from16 v17, v5

    .line 77
    .local v17, _arg11:Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 79
    .local v18, _arg12:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move/from16 v19, v5

    .line 81
    .local v19, _arg13:Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 83
    .local v20, _arg14:Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move/from16 v21, v5

    .line 85
    .local v21, _arg15:Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 87
    .local v22, _arg16:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .local v23, _arg17:Ljava/lang/String;
    move-object/from16 v5, p0

    .line 88
    invoke-virtual/range {v5 .. v23}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v37

    .line 89
    .local v37, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 91
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 65
    .end local v12           #_arg6:Z
    .end local v13           #_arg7:Ljava/lang/String;
    .end local v14           #_arg8:Ljava/lang/String;
    .end local v15           #_arg9:Ljava/lang/String;
    .end local v16           #_arg10:Z
    .end local v17           #_arg11:Z
    .end local v18           #_arg12:Ljava/lang/String;
    .end local v19           #_arg13:Z
    .end local v20           #_arg14:Z
    .end local v21           #_arg15:Z
    .end local v22           #_arg16:Ljava/lang/String;
    .end local v23           #_arg17:Ljava/lang/String;
    .end local v37           #_result:J
    :cond_0
    const/4 v5, 0x0

    move v12, v5

    goto :goto_1

    .line 73
    .restart local v12       #_arg6:Z
    .restart local v13       #_arg7:Ljava/lang/String;
    .restart local v14       #_arg8:Ljava/lang/String;
    .restart local v15       #_arg9:Ljava/lang/String;
    :cond_1
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_2

    .line 75
    .restart local v16       #_arg10:Z
    :cond_2
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_3

    .line 79
    .restart local v17       #_arg11:Z
    .restart local v18       #_arg12:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    move/from16 v19, v5

    goto :goto_4

    .line 81
    .restart local v19       #_arg13:Z
    :cond_4
    const/4 v5, 0x0

    move/from16 v20, v5

    goto :goto_5

    .line 83
    .restart local v20       #_arg14:Z
    :cond_5
    const/4 v5, 0x0

    move/from16 v21, v5

    goto :goto_6

    .line 95
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v10           #_arg4:I
    .end local v11           #_arg5:I
    .end local v12           #_arg6:Z
    .end local v13           #_arg7:Ljava/lang/String;
    .end local v14           #_arg8:Ljava/lang/String;
    .end local v15           #_arg9:Ljava/lang/String;
    .end local v16           #_arg10:Z
    .end local v17           #_arg11:Z
    .end local v18           #_arg12:Ljava/lang/String;
    .end local v19           #_arg13:Z
    .end local v20           #_arg14:Z
    :sswitch_2
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 99
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 101
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 103
    .restart local v8       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 105
    .restart local v9       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v29

    .local v29, _arg4:J
    move-object/from16 v24, p0

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    .line 106
    invoke-virtual/range {v24 .. v30}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v37

    .line 107
    .restart local v37       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 113
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v9           #_arg3:Ljava/lang/String;
    .end local v29           #_arg4:J
    .end local v37           #_result:J
    :sswitch_3
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    move v6, v5

    .line 117
    .local v6, _arg0:Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .line 118
    .local v33, _arg1:J
    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSSL(ZJ)Z

    move-result v37

    .line 119
    .local v37, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v37, :cond_7

    const/4 v5, 0x1

    :goto_8
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 115
    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :cond_6
    const/4 v5, 0x0

    move v6, v5

    goto :goto_7

    .line 120
    .restart local v6       #_arg0:Z
    .restart local v33       #_arg1:J
    .restart local v37       #_result:Z
    :cond_7
    const/4 v5, 0x0

    goto :goto_8

    .line 125
    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_4
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    move v6, v5

    .line 129
    .restart local v6       #_arg0:Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .line 130
    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setTLS(ZJ)Z

    move-result v37

    .line 131
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v37, :cond_9

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 127
    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :cond_8
    const/4 v5, 0x0

    move v6, v5

    goto :goto_9

    .line 132
    .restart local v6       #_arg0:Z
    .restart local v33       #_arg1:J
    .restart local v37       #_result:Z
    :cond_9
    const/4 v5, 0x0

    goto :goto_a

    .line 137
    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_5
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    move v6, v5

    .line 141
    .restart local v6       #_arg0:Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .line 142
    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAcceptAllCertificates(ZJ)Z

    move-result v37

    .line 143
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    if-eqz v37, :cond_b

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 139
    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :cond_a
    const/4 v5, 0x0

    move v6, v5

    goto :goto_b

    .line 144
    .restart local v6       #_arg0:Z
    .restart local v33       #_arg1:J
    .restart local v37       #_result:Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_c

    .line 149
    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_6
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    move v6, v5

    .line 153
    .restart local v6       #_arg0:Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .line 154
    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAlwaysVibrateOnEmailNotification(ZJ)Z

    move-result v37

    .line 155
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v37, :cond_d

    const/4 v5, 0x1

    :goto_e
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 151
    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :cond_c
    const/4 v5, 0x0

    move v6, v5

    goto :goto_d

    .line 156
    .restart local v6       #_arg0:Z
    .restart local v33       #_arg1:J
    .restart local v37       #_result:Z
    :cond_d
    const/4 v5, 0x0

    goto :goto_e

    .line 161
    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_7
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    move v6, v5

    .line 165
    .restart local v6       #_arg0:Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .line 166
    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSilentVibrateOnEmailNotification(ZJ)Z

    move-result v37

    .line 167
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v37, :cond_f

    const/4 v5, 0x1

    :goto_10
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 163
    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :cond_e
    const/4 v5, 0x0

    move v6, v5

    goto :goto_f

    .line 168
    .restart local v6       #_arg0:Z
    .restart local v33       #_arg1:J
    .restart local v37       #_result:Z
    :cond_f
    const/4 v5, 0x0

    goto :goto_10

    .line 173
    .end local v6           #_arg0:Z
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_8
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 177
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .line 178
    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setPassword(Ljava/lang/String;J)Z

    move-result v37

    .line 179
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    if-eqz v37, :cond_10

    const/4 v5, 0x1

    :goto_11
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 180
    :cond_10
    const/4 v5, 0x0

    goto :goto_11

    .line 185
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_9
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 189
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .line 190
    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setProtocolVersion(Ljava/lang/String;J)Z

    move-result v37

    .line 191
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v37, :cond_11

    const/4 v5, 0x1

    :goto_12
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 192
    :cond_11
    const/4 v5, 0x0

    goto :goto_12

    .line 197
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_a
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 201
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .line 202
    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSignature(Ljava/lang/String;J)Z

    move-result v37

    .line 203
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    if-eqz v37, :cond_12

    const/4 v5, 0x1

    :goto_13
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 204
    :cond_12
    const/4 v5, 0x0

    goto :goto_13

    .line 209
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_b
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 213
    .local v6, _arg0:[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 215
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 216
    .local v35, _arg2:J
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-wide/from16 v3, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setClientAuthCert([BLjava/lang/String;J)V

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 222
    .end local v6           #_arg0:[B
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v35           #_arg2:J
    :sswitch_c
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 226
    .local v6, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .line 227
    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setPastDaysToSync(IJ)Z

    move-result v37

    .line 228
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v37, :cond_13

    const/4 v5, 0x1

    :goto_14
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 229
    :cond_13
    const/4 v5, 0x0

    goto :goto_14

    .line 234
    .end local v6           #_arg0:I
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_d
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 238
    .restart local v6       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .line 239
    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSyncInterval(IJ)Z

    move-result v37

    .line 240
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    if-eqz v37, :cond_14

    const/4 v5, 0x1

    :goto_15
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 241
    :cond_14
    const/4 v5, 0x0

    goto :goto_15

    .line 246
    .end local v6           #_arg0:I
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_e
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .line 251
    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setSenderName(Ljava/lang/String;J)Z

    move-result v37

    .line 252
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 253
    if-eqz v37, :cond_15

    const/4 v5, 0x1

    :goto_16
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 253
    :cond_15
    const/4 v5, 0x0

    goto :goto_16

    .line 258
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_f
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 262
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .line 263
    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setServerPathPrefix(Ljava/lang/String;J)Z

    move-result v37

    .line 264
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    if-eqz v37, :cond_16

    const/4 v5, 0x1

    :goto_17
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 265
    :cond_16
    const/4 v5, 0x0

    goto :goto_17

    .line 270
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_10
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v31

    .line 273
    .local v31, _arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAsDefaultAccount(J)Z

    move-result v37

    .line 274
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    if-eqz v37, :cond_17

    const/4 v5, 0x1

    :goto_18
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 275
    :cond_17
    const/4 v5, 0x0

    goto :goto_18

    .line 280
    .end local v31           #_arg0:J
    .end local v37           #_result:Z
    :sswitch_11
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 284
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .line 285
    .restart local v33       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v6

    move-wide/from16 v2, v33

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->setAccountName(Ljava/lang/String;J)Z

    move-result v37

    .line 286
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    if-eqz v37, :cond_18

    const/4 v5, 0x1

    :goto_19
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 287
    :cond_18
    const/4 v5, 0x0

    goto :goto_19

    .line 292
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v33           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_12
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 296
    .restart local v6       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 298
    .restart local v7       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 299
    .restart local v8       #_arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v37

    .line 300
    .local v37, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 302
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 306
    .end local v6           #_arg0:Ljava/lang/String;
    .end local v7           #_arg1:Ljava/lang/String;
    .end local v8           #_arg2:Ljava/lang/String;
    .end local v37           #_result:J
    :sswitch_13
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v31

    .line 309
    .restart local v31       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->getAccountDetails(J)Landroid/app/enterprise/Account;

    move-result-object v37

    .line 310
    .local v37, _result:Landroid/app/enterprise/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 311
    if-eqz v37, :cond_19

    .line 312
    const/4 v5, 0x1

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    const/4 v5, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 318
    :goto_1a
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 316
    :cond_19
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 322
    .end local v31           #_arg0:J
    .end local v37           #_result:Landroid/app/enterprise/Account;
    :sswitch_14
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v31

    .line 325
    .restart local v31       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->deleteAccount(J)Z

    move-result v37

    .line 326
    .local v37, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 327
    if-eqz v37, :cond_1a

    const/4 v5, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 327
    :cond_1a
    const/4 v5, 0x0

    goto :goto_1b

    .line 332
    .end local v31           #_arg0:J
    .end local v37           #_result:Z
    :sswitch_15
    const-string v5, "android.app.enterprise.IExchangeAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->sendAccountsChangedBroadcast()V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    const/4 v5, 0x1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
