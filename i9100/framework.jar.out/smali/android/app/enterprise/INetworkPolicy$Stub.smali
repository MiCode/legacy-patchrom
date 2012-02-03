.class public abstract Landroid/app/enterprise/INetworkPolicy$Stub;
.super Landroid/os/Binder;
.source "INetworkPolicy.java"

# interfaces
.implements Landroid/app/enterprise/INetworkPolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/enterprise/INetworkPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/enterprise/INetworkPolicy$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.enterprise.INetworkPolicy"

.field static final TRANSACTION_addNewAp:I = 0x1

.field static final TRANSACTION_deleteAp:I = 0x4

.field static final TRANSACTION_setApSettings:I = 0x2

.field static final TRANSACTION_setpreferredAp:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.app.enterprise.INetworkPolicy"

    invoke-virtual {p0, p0, v0}, Landroid/app/enterprise/INetworkPolicy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/INetworkPolicy;
    .locals 2
    .parameter "obj"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v1, 0x0

    .line 33
    :goto_0
    return-object v1

    .line 29
    :cond_0
    const-string v1, "android.app.enterprise.INetworkPolicy"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/enterprise/INetworkPolicy;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/app/enterprise/INetworkPolicy;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 33
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/enterprise/INetworkPolicy$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/enterprise/INetworkPolicy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 37
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 143
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 45
    :sswitch_0
    const-string v3, "android.app.enterprise.INetworkPolicy"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v3, 0x1

    goto :goto_0

    .line 50
    :sswitch_1
    const-string v3, "android.app.enterprise.INetworkPolicy"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 54
    .local v4, _arg0:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 58
    .local v6, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 60
    .local v7, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 62
    .local v8, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 64
    .local v9, _arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 66
    .local v10, _arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 68
    .local v11, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 70
    .local v12, _arg8:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 72
    .local v13, _arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 74
    .local v14, _arg10:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 76
    .local v15, _arg11:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 78
    .local v16, _arg12:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, _arg13:I
    move-object/from16 v3, p0

    .line 79
    invoke-virtual/range {v3 .. v17}, Landroid/app/enterprise/INetworkPolicy$Stub;->addNewAp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J

    move-result-wide v35

    .line 80
    .local v35, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    move-object/from16 v0, p3

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    const/4 v3, 0x1

    goto :goto_0

    .line 86
    .end local v4           #_arg0:Ljava/lang/String;
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v8           #_arg4:Ljava/lang/String;
    .end local v9           #_arg5:Ljava/lang/String;
    .end local v10           #_arg6:Ljava/lang/String;
    .end local v11           #_arg7:Ljava/lang/String;
    .end local v12           #_arg8:I
    .end local v13           #_arg9:Ljava/lang/String;
    .end local v14           #_arg10:I
    .end local v15           #_arg11:Ljava/lang/String;
    .end local v16           #_arg12:Ljava/lang/String;
    .end local v17           #_arg13:I
    .end local v35           #_result:J
    :sswitch_2
    const-string v3, "android.app.enterprise.INetworkPolicy"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 90
    .local v19, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 92
    .restart local v5       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 94
    .restart local v6       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 96
    .restart local v7       #_arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 98
    .restart local v8       #_arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 100
    .restart local v9       #_arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 102
    .restart local v10       #_arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 104
    .restart local v11       #_arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 106
    .local v12, _arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 108
    .local v13, _arg9:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 110
    .local v14, _arg10:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 112
    .local v15, _arg11:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 114
    .restart local v16       #_arg12:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 116
    .local v17, _arg13:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v34

    .local v34, _arg14:I
    move-object/from16 v18, p0

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    move/from16 v29, v13

    move-object/from16 v30, v14

    move/from16 v31, v15

    move-object/from16 v32, v16

    move-object/from16 v33, v17

    .line 117
    invoke-virtual/range {v18 .. v34}, Landroid/app/enterprise/INetworkPolicy$Stub;->setApSettings(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;I)J

    move-result-wide v35

    .line 118
    .restart local v35       #_result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    move-object/from16 v0, p3

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 120
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 124
    .end local v5           #_arg1:Ljava/lang/String;
    .end local v6           #_arg2:Ljava/lang/String;
    .end local v7           #_arg3:Ljava/lang/String;
    .end local v8           #_arg4:Ljava/lang/String;
    .end local v9           #_arg5:Ljava/lang/String;
    .end local v10           #_arg6:Ljava/lang/String;
    .end local v11           #_arg7:Ljava/lang/String;
    .end local v12           #_arg8:Ljava/lang/String;
    .end local v13           #_arg9:I
    .end local v14           #_arg10:Ljava/lang/String;
    .end local v15           #_arg11:I
    .end local v16           #_arg12:Ljava/lang/String;
    .end local v17           #_arg13:Ljava/lang/String;
    .end local v19           #_arg0:J
    .end local v34           #_arg14:I
    .end local v35           #_result:J
    :sswitch_3
    const-string v3, "android.app.enterprise.INetworkPolicy"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 127
    .restart local v19       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/INetworkPolicy$Stub;->setpreferredAp(J)Z

    move-result v35

    .line 128
    .local v35, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v35, :cond_0

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 129
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 134
    .end local v19           #_arg0:J
    .end local v35           #_result:Z
    :sswitch_4
    const-string v3, "android.app.enterprise.INetworkPolicy"

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v19

    .line 137
    .restart local v19       #_arg0:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/enterprise/INetworkPolicy$Stub;->deleteAp(J)Z

    move-result v35

    .line 138
    .restart local v35       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    if-eqz v35, :cond_1

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 139
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
