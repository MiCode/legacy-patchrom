.class public abstract Landroid/app/enterprise/IEmailAccountPolicy$Stub;
.super Landroid/os/Binder;
.source "IEmailAccountPolicy.java"

# interfaces
.implements Landroid/app/enterprise/IEmailAccountPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/IEmailAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/IEmailAccountPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.IEmailAccountPolicy"

.field static final TRANSACTION_addNewAccount:I = 0x1

.field static final TRANSACTION_deleteAccount:I = 0x1f

.field static final TRANSACTION_getAccountDetails:I = 0x1e

.field static final TRANSACTION_getAccountId:I = 0x1d

.field static final TRANSACTION_sendAccountsChangedBroadcast:I = 0x20

.field static final TRANSACTION_setAccountName:I = 0x2

.field static final TRANSACTION_setAlwaysVibrateOnEmailNotification:I = 0x8

.field static final TRANSACTION_setAsDefaultAccount:I = 0x1c

.field static final TRANSACTION_setEmailAddress:I = 0x3

.field static final TRANSACTION_setInComingProtocol:I = 0xa

.field static final TRANSACTION_setInComingServerAcceptAllCertificates:I = 0xf

.field static final TRANSACTION_setInComingServerAddress:I = 0xb

.field static final TRANSACTION_setInComingServerLogin:I = 0x10

.field static final TRANSACTION_setInComingServerPassword:I = 0x11

.field static final TRANSACTION_setInComingServerPathPrefix:I = 0x12

.field static final TRANSACTION_setInComingServerPort:I = 0xc

.field static final TRANSACTION_setInComingServerSSL:I = 0xd

.field static final TRANSACTION_setInComingServerTLS:I = 0xe

.field static final TRANSACTION_setOutGoingProtocol:I = 0x13

.field static final TRANSACTION_setOutGoingServerAcceptAllCertificates:I = 0x18

.field static final TRANSACTION_setOutGoingServerAddress:I = 0x14

.field static final TRANSACTION_setOutGoingServerLogin:I = 0x19

.field static final TRANSACTION_setOutGoingServerPassword:I = 0x1a

.field static final TRANSACTION_setOutGoingServerPathPrefix:I = 0x1b

.field static final TRANSACTION_setOutGoingServerPort:I = 0x15

.field static final TRANSACTION_setOutGoingServerSSL:I = 0x16

.field static final TRANSACTION_setOutGoingServerTLS:I = 0x17

.field static final TRANSACTION_setPastDaysToSync:I = 0x4

.field static final TRANSACTION_setSenderName:I = 0x6

.field static final TRANSACTION_setSignature:I = 0x7

.field static final TRANSACTION_setSilentVibrateOnEmailNotification:I = 0x9

.field static final TRANSACTION_setSyncInterval:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.enterprise.IEmailAccountPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEmailAccountPolicy;
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
    const-string v1, "android.app.enterprise.IEmailAccountPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/enterprise/IEmailAccountPolicy;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/enterprise/IEmailAccountPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 483
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 46
    :sswitch_0
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v4, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 57
    .local v6, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 59
    .local v7, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 61
    .local v8, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    move v9, v4

    .line 63
    .local v9, _arg4:Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 65
    .local v10, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 67
    .local v11, _arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 69
    .local v12, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move v13, v4

    .line 71
    .local v13, _arg8:Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move v14, v4

    .line 73
    .local v14, _arg9:Z
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 75
    .local v15, _arg10:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 77
    .local v16, _arg11:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 79
    .local v17, _arg12:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 81
    .local v18, _arg13:Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move/from16 v19, v4

    .line 83
    .local v19, _arg14:Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    move/from16 v20, v4

    .line 85
    .local v20, _arg15:Z
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v21

    .line 87
    .local v21, _arg16:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 89
    .local v22, _arg17:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v23

    .line 91
    .local v23, _arg18:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v24

    .line 93
    .local v24, _arg19:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v25

    .line 95
    .local v25, _arg20:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 97
    .local v26, _arg21:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move/from16 v27, v4

    .line 99
    .local v27, _arg22:Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move/from16 v28, v4

    .line 101
    .local v28, _arg23:Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    move/from16 v29, v4

    .line 103
    .local v29, _arg24:Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 105
    .local v30, _arg25:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 107
    .local v31, _arg26:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .local v32, _arg27:Ljava/lang/String;
    move-object/from16 v4, p0

    .line 108
    invoke-virtual/range {v4 .. v32}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->addNewAccount(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v37

    .line 109
    .local v37, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 111
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 61
    .end local v9           #_arg4:Z
    .end local v10           #_arg5:Ljava/lang/String;
    .end local v11           #_arg6:Ljava/lang/String;
    .end local v12           #_arg7:Ljava/lang/String;
    .end local v13           #_arg8:Z
    .end local v14           #_arg9:Z
    .end local v15           #_arg10:Ljava/lang/String;
    .end local v16           #_arg11:Ljava/lang/String;
    .end local v17           #_arg12:I
    .end local v18           #_arg13:Z
    .end local v19           #_arg14:Z
    .end local v20           #_arg15:Z
    .end local v21           #_arg16:Ljava/lang/String;
    .end local v22           #_arg17:Ljava/lang/String;
    .end local v23           #_arg18:Ljava/lang/String;
    .end local v24           #_arg19:Ljava/lang/String;
    .end local v25           #_arg20:Ljava/lang/String;
    .end local v26           #_arg21:I
    .end local v27           #_arg22:Z
    .end local v28           #_arg23:Z
    .end local v29           #_arg24:Z
    .end local v30           #_arg25:Ljava/lang/String;
    .end local v31           #_arg26:Ljava/lang/String;
    .end local v32           #_arg27:Ljava/lang/String;
    .end local v37           #_result:J
    :cond_0
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_1

    .line 69
    .restart local v9       #_arg4:Z
    .restart local v10       #_arg5:Ljava/lang/String;
    .restart local v11       #_arg6:Ljava/lang/String;
    .restart local v12       #_arg7:Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    move v13, v4

    goto/16 :goto_2

    .line 71
    .restart local v13       #_arg8:Z
    :cond_2
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_3

    .line 79
    .restart local v14       #_arg9:Z
    .restart local v15       #_arg10:Ljava/lang/String;
    .restart local v16       #_arg11:Ljava/lang/String;
    .restart local v17       #_arg12:I
    :cond_3
    const/4 v4, 0x0

    move/from16 v18, v4

    goto :goto_4

    .line 81
    .restart local v18       #_arg13:Z
    :cond_4
    const/4 v4, 0x0

    move/from16 v19, v4

    goto :goto_5

    .line 83
    .restart local v19       #_arg14:Z
    :cond_5
    const/4 v4, 0x0

    move/from16 v20, v4

    goto :goto_6

    .line 97
    .restart local v20       #_arg15:Z
    .restart local v21       #_arg16:Ljava/lang/String;
    .restart local v22       #_arg17:Ljava/lang/String;
    .restart local v23       #_arg18:Ljava/lang/String;
    .restart local v24       #_arg19:Ljava/lang/String;
    .restart local v25       #_arg20:Ljava/lang/String;
    .restart local v26       #_arg21:I
    :cond_6
    const/4 v4, 0x0

    move/from16 v27, v4

    goto :goto_7

    .line 99
    .restart local v27       #_arg22:Z
    :cond_7
    const/4 v4, 0x0

    move/from16 v28, v4

    goto :goto_8

    .line 101
    .restart local v28       #_arg23:Z
    :cond_8
    const/4 v4, 0x0

    move/from16 v29, v4

    goto :goto_9

    .line 115
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v7           #_arg2:I
    .end local v8           #_arg3:I
    .end local v9           #_arg4:Z
    .end local v10           #_arg5:Ljava/lang/String;
    .end local v11           #_arg6:Ljava/lang/String;
    .end local v12           #_arg7:Ljava/lang/String;
    .end local v13           #_arg8:Z
    .end local v14           #_arg9:Z
    .end local v15           #_arg10:Ljava/lang/String;
    .end local v16           #_arg11:Ljava/lang/String;
    .end local v17           #_arg12:I
    .end local v18           #_arg13:Z
    .end local v19           #_arg14:Z
    .end local v20           #_arg15:Z
    .end local v21           #_arg16:Ljava/lang/String;
    .end local v22           #_arg17:Ljava/lang/String;
    .end local v23           #_arg18:Ljava/lang/String;
    .end local v24           #_arg19:Ljava/lang/String;
    .end local v25           #_arg20:Ljava/lang/String;
    .end local v26           #_arg21:I
    .end local v27           #_arg22:Z
    .end local v28           #_arg23:Z
    :sswitch_2
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 119
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 120
    .local v35, _arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setAccountName(Ljava/lang/String;J)Z

    move-result v37

    .line 121
    .local v37, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v37, :cond_9

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 122
    :cond_9
    const/4 v4, 0x0

    goto :goto_a

    .line 127
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_3
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 131
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 132
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setEmailAddress(Ljava/lang/String;J)Z

    move-result v37

    .line 133
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v37, :cond_a

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 134
    :cond_a
    const/4 v4, 0x0

    goto :goto_b

    .line 139
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_4
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 143
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 144
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setPastDaysToSync(IJ)Z

    move-result v37

    .line 145
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v37, :cond_b

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 146
    :cond_b
    const/4 v4, 0x0

    goto :goto_c

    .line 151
    .end local v5           #_arg0:I
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_5
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 155
    .restart local v5       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 156
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setSyncInterval(IJ)Z

    move-result v37

    .line 157
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    if-eqz v37, :cond_c

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 158
    :cond_c
    const/4 v4, 0x0

    goto :goto_d

    .line 163
    .end local v5           #_arg0:I
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_6
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 168
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setSenderName(Ljava/lang/String;J)Z

    move-result v37

    .line 169
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v37, :cond_d

    const/4 v4, 0x1

    :goto_e
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 170
    :cond_d
    const/4 v4, 0x0

    goto :goto_e

    .line 175
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_7
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 179
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 180
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setSignature(Ljava/lang/String;J)Z

    move-result v37

    .line 181
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v37, :cond_e

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 182
    :cond_e
    const/4 v4, 0x0

    goto :goto_f

    .line 187
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_8
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    move v5, v4

    .line 191
    .local v5, _arg0:Z
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 192
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setAlwaysVibrateOnEmailNotification(ZJ)Z

    move-result v37

    .line 193
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    if-eqz v37, :cond_10

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 189
    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :cond_f
    const/4 v4, 0x0

    move v5, v4

    goto :goto_10

    .line 194
    .restart local v5       #_arg0:Z
    .restart local v35       #_arg1:J
    .restart local v37       #_result:Z
    :cond_10
    const/4 v4, 0x0

    goto :goto_11

    .line 199
    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_9
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    move v5, v4

    .line 203
    .restart local v5       #_arg0:Z
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 204
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setSilentVibrateOnEmailNotification(ZJ)Z

    move-result v37

    .line 205
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v37, :cond_12

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 201
    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :cond_11
    const/4 v4, 0x0

    move v5, v4

    goto :goto_12

    .line 206
    .restart local v5       #_arg0:Z
    .restart local v35       #_arg1:J
    .restart local v37       #_result:Z
    :cond_12
    const/4 v4, 0x0

    goto :goto_13

    .line 211
    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_a
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 216
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingProtocol(Ljava/lang/String;J)Z

    move-result v37

    .line 217
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v37, :cond_13

    const/4 v4, 0x1

    :goto_14
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 218
    :cond_13
    const/4 v4, 0x0

    goto :goto_14

    .line 223
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_b
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 227
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 228
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerAddress(Ljava/lang/String;J)J

    move-result-wide v37

    .line 229
    .local v37, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 231
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 235
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:J
    :sswitch_c
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 239
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 240
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerPort(IJ)Z

    move-result v37

    .line 241
    .local v37, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    if-eqz v37, :cond_14

    const/4 v4, 0x1

    :goto_15
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 242
    :cond_14
    const/4 v4, 0x0

    goto :goto_15

    .line 247
    .end local v5           #_arg0:I
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_d
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    move v5, v4

    .line 251
    .local v5, _arg0:Z
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 252
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerSSL(ZJ)Z

    move-result v37

    .line 253
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    if-eqz v37, :cond_16

    const/4 v4, 0x1

    :goto_17
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 249
    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :cond_15
    const/4 v4, 0x0

    move v5, v4

    goto :goto_16

    .line 254
    .restart local v5       #_arg0:Z
    .restart local v35       #_arg1:J
    .restart local v37       #_result:Z
    :cond_16
    const/4 v4, 0x0

    goto :goto_17

    .line 259
    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_e
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    move v5, v4

    .line 263
    .restart local v5       #_arg0:Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 264
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerTLS(ZJ)Z

    move-result v37

    .line 265
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    if-eqz v37, :cond_18

    const/4 v4, 0x1

    :goto_19
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 261
    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :cond_17
    const/4 v4, 0x0

    move v5, v4

    goto :goto_18

    .line 266
    .restart local v5       #_arg0:Z
    .restart local v35       #_arg1:J
    .restart local v37       #_result:Z
    :cond_18
    const/4 v4, 0x0

    goto :goto_19

    .line 271
    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_f
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    move v5, v4

    .line 275
    .restart local v5       #_arg0:Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 276
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerAcceptAllCertificates(ZJ)Z

    move-result v37

    .line 277
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    if-eqz v37, :cond_1a

    const/4 v4, 0x1

    :goto_1b
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 273
    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :cond_19
    const/4 v4, 0x0

    move v5, v4

    goto :goto_1a

    .line 278
    .restart local v5       #_arg0:Z
    .restart local v35       #_arg1:J
    .restart local v37       #_result:Z
    :cond_1a
    const/4 v4, 0x0

    goto :goto_1b

    .line 283
    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_10
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 287
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 288
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerLogin(Ljava/lang/String;J)J

    move-result-wide v37

    .line 289
    .local v37, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 291
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 295
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:J
    :sswitch_11
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 299
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 300
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerPassword(Ljava/lang/String;J)Z

    move-result v37

    .line 301
    .local v37, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v37, :cond_1b

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 302
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1c

    .line 307
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_12
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 311
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 312
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setInComingServerPathPrefix(Ljava/lang/String;J)Z

    move-result v37

    .line 313
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    if-eqz v37, :cond_1c

    const/4 v4, 0x1

    :goto_1d
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 314
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1d

    .line 319
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_13
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 323
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 324
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingProtocol(Ljava/lang/String;J)Z

    move-result v37

    .line 325
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    if-eqz v37, :cond_1d

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 327
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 326
    :cond_1d
    const/4 v4, 0x0

    goto :goto_1e

    .line 331
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_14
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 335
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 336
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerAddress(Ljava/lang/String;J)J

    move-result-wide v37

    .line 337
    .local v37, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 339
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 343
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:J
    :sswitch_15
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 347
    .local v5, _arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 348
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerPort(IJ)Z

    move-result v37

    .line 349
    .local v37, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v37, :cond_1e

    const/4 v4, 0x1

    :goto_1f
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 350
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1f

    .line 355
    .end local v5           #_arg0:I
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_16
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x1

    move v5, v4

    .line 359
    .local v5, _arg0:Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 360
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerSSL(ZJ)Z

    move-result v37

    .line 361
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 362
    if-eqz v37, :cond_20

    const/4 v4, 0x1

    :goto_21
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 357
    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :cond_1f
    const/4 v4, 0x0

    move v5, v4

    goto :goto_20

    .line 362
    .restart local v5       #_arg0:Z
    .restart local v35       #_arg1:J
    .restart local v37       #_result:Z
    :cond_20
    const/4 v4, 0x0

    goto :goto_21

    .line 367
    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_17
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_21

    const/4 v4, 0x1

    move v5, v4

    .line 371
    .restart local v5       #_arg0:Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 372
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerTLS(ZJ)Z

    move-result v37

    .line 373
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    if-eqz v37, :cond_22

    const/4 v4, 0x1

    :goto_23
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 375
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 369
    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :cond_21
    const/4 v4, 0x0

    move v5, v4

    goto :goto_22

    .line 374
    .restart local v5       #_arg0:Z
    .restart local v35       #_arg1:J
    .restart local v37       #_result:Z
    :cond_22
    const/4 v4, 0x0

    goto :goto_23

    .line 379
    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_18
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_23

    const/4 v4, 0x1

    move v5, v4

    .line 383
    .restart local v5       #_arg0:Z
    :goto_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 384
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerAcceptAllCertificates(ZJ)Z

    move-result v37

    .line 385
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    if-eqz v37, :cond_24

    const/4 v4, 0x1

    :goto_25
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 387
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 381
    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :cond_23
    const/4 v4, 0x0

    move v5, v4

    goto :goto_24

    .line 386
    .restart local v5       #_arg0:Z
    .restart local v35       #_arg1:J
    .restart local v37       #_result:Z
    :cond_24
    const/4 v4, 0x0

    goto :goto_25

    .line 391
    .end local v5           #_arg0:Z
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_19
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 396
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerLogin(Ljava/lang/String;J)J

    move-result-wide v37

    .line 397
    .local v37, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 399
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 403
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:J
    :sswitch_1a
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 407
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 408
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerPassword(Ljava/lang/String;J)Z

    move-result v37

    .line 409
    .local v37, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    if-eqz v37, :cond_25

    const/4 v4, 0x1

    :goto_26
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 410
    :cond_25
    const/4 v4, 0x0

    goto :goto_26

    .line 415
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_1b
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 419
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v35

    .line 420
    .restart local v35       #_arg1:J
    move-object/from16 v0, p0

    move-object v1, v5

    move-wide/from16 v2, v35

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setOutGoingServerPathPrefix(Ljava/lang/String;J)Z

    move-result v37

    .line 421
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    if-eqz v37, :cond_26

    const/4 v4, 0x1

    :goto_27
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 422
    :cond_26
    const/4 v4, 0x0

    goto :goto_27

    .line 427
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v35           #_arg1:J
    .end local v37           #_result:Z
    :sswitch_1c
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .line 430
    .local v33, _arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->setAsDefaultAccount(J)Z

    move-result v37

    .line 431
    .restart local v37       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    if-eqz v37, :cond_27

    const/4 v4, 0x1

    :goto_28
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 433
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 432
    :cond_27
    const/4 v4, 0x0

    goto :goto_28

    .line 437
    .end local v33           #_arg0:J
    .end local v37           #_result:Z
    :sswitch_1d
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 441
    .restart local v5       #_arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 443
    .restart local v6       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 444
    .local v7, _arg2:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v37

    .line 445
    .local v37, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    move-object/from16 v0, p3

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 447
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 451
    .end local v5           #_arg0:Ljava/lang/String;
    .end local v6           #_arg1:Ljava/lang/String;
    .end local v7           #_arg2:Ljava/lang/String;
    .end local v37           #_result:J
    :sswitch_1e
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .line 454
    .restart local v33       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->getAccountDetails(J)Landroid/app/enterprise/Account;

    move-result-object v37

    .line 455
    .local v37, _result:Landroid/app/enterprise/Account;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    if-eqz v37, :cond_28

    .line 457
    const/4 v4, 0x1

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    const/4 v4, 0x1

    move-object/from16 v0, v37

    move-object/from16 v1, p3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 463
    :goto_29
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 461
    :cond_28
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_29

    .line 467
    .end local v33           #_arg0:J
    .end local v37           #_result:Landroid/app/enterprise/Account;
    :sswitch_1f
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v33

    .line 470
    .restart local v33       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v33

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->deleteAccount(J)Z

    move-result v37

    .line 471
    .local v37, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 472
    if-eqz v37, :cond_29

    const/4 v4, 0x1

    :goto_2a
    move-object/from16 v0, p3

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 472
    :cond_29
    const/4 v4, 0x0

    goto :goto_2a

    .line 477
    .end local v33           #_arg0:J
    .end local v37           #_result:Z
    :sswitch_20
    const-string v4, "android.app.enterprise.IEmailAccountPolicy"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual/range {p0 .. p0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->sendAccountsChangedBroadcast()V

    .line 479
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 480
    const/4 v4, 0x1

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
