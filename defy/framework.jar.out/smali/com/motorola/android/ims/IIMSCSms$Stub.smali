.class public abstract Lcom/motorola/android/ims/IIMSCSms$Stub;
.super Landroid/os/Binder;
.source "IIMSCSms.java"

# interfaces
.implements Lcom/motorola/android/ims/IIMSCSms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/ims/IIMSCSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/ims/IIMSCSms$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.android.ims.IIMSCSms"

.field static final TRANSACTION_cancelMessage:I = 0x5

.field static final TRANSACTION_getSmsProtocolType:I = 0x6

.field static final TRANSACTION_registerCallback:I = 0x1

.field static final TRANSACTION_sendMessage:I = 0x3

.field static final TRANSACTION_sendResponse:I = 0x4

.field static final TRANSACTION_unRegisterCallback:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.motorola.android.ims.IIMSCSms"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/android/ims/IIMSCSms$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/IIMSCSms;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.motorola.android.ims.IIMSCSms"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/android/ims/IIMSCSms;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/motorola/android/ims/IIMSCSms;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/motorola/android/ims/IIMSCSms$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/motorola/android/ims/IIMSCSms$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 20
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
    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    :sswitch_0
    const-string v5, "com.motorola.android.ims.IIMSCSms"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v5, 0x1

    goto :goto_0

    :sswitch_1
    const-string v5, "com.motorola.android.ims.IIMSCSms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/android/ims/IIMSCSmsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/IIMSCSmsCallback;

    move-result-object v6

    .local v6, _arg0:Lcom/motorola/android/ims/IIMSCSmsCallback;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/android/ims/IIMSCSms$Stub;->registerCallback(Lcom/motorola/android/ims/IIMSCSmsCallback;)I

    move-result v18

    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v6           #_arg0:Lcom/motorola/android/ims/IIMSCSmsCallback;
    .end local v18           #_result:I
    :sswitch_2
    const-string v5, "com.motorola.android.ims.IIMSCSms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/motorola/android/ims/IIMSCSmsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/ims/IIMSCSmsCallback;

    move-result-object v6

    .restart local v6       #_arg0:Lcom/motorola/android/ims/IIMSCSmsCallback;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/android/ims/IIMSCSms$Stub;->unRegisterCallback(Lcom/motorola/android/ims/IIMSCSmsCallback;)I

    move-result v18

    .restart local v18       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v6           #_arg0:Lcom/motorola/android/ims/IIMSCSmsCallback;
    .end local v18           #_result:I
    :sswitch_3
    const-string v5, "com.motorola.android.ims.IIMSCSms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .local v6, _arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .local v8, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, _arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .local v10, _arg3:[B
    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/motorola/android/ims/IIMSCSms$Stub;->sendMessage(JLjava/lang/String;I[B)J

    move-result-wide v18

    .local v18, _result:J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    const/4 v5, 0x1

    goto :goto_0

    .end local v6           #_arg0:J
    .end local v8           #_arg1:Ljava/lang/String;
    .end local v9           #_arg2:I
    .end local v10           #_arg3:[B
    .end local v18           #_result:J
    :sswitch_4
    const-string v5, "com.motorola.android.ims.IIMSCSms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .local v14, _arg1:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .restart local v9       #_arg2:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .restart local v10       #_arg3:[B
    move-object/from16 v11, p0

    move-wide v12, v6

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-virtual/range {v11 .. v17}, Lcom/motorola/android/ims/IIMSCSms$Stub;->sendResponse(JJI[B)Z

    move-result v18

    .local v18, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v18, :cond_0

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .end local v6           #_arg0:J
    .end local v9           #_arg2:I
    .end local v10           #_arg3:[B
    .end local v14           #_arg1:J
    .end local v18           #_result:Z
    :sswitch_5
    const-string v5, "com.motorola.android.ims.IIMSCSms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .restart local v6       #_arg0:J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    .restart local v14       #_arg1:J
    move-object/from16 v0, p0

    move-wide v1, v6

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/motorola/android/ims/IIMSCSms$Stub;->cancelMessage(JJ)Z

    move-result v18

    .restart local v18       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v18, :cond_1

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    .end local v6           #_arg0:J
    .end local v14           #_arg1:J
    .end local v18           #_result:Z
    :sswitch_6
    const-string v5, "com.motorola.android.ims.IIMSCSms"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/motorola/android/ims/IIMSCSms$Stub;->getSmsProtocolType()I

    move-result v18

    .local v18, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v5, 0x1

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
