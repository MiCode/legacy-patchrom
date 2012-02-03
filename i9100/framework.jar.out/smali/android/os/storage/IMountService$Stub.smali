.class public abstract Landroid/os/storage/IMountService$Stub;
.super Landroid/os/Binder;
.source "IMountService.java"

# interfaces
.implements Landroid/os/storage/IMountService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IMountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IMountService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IMountService"

.field static final TRANSACTION_createSecureContainer:I = 0xb

.field static final TRANSACTION_createSecureContainerWithPath:I = 0x51

.field static final TRANSACTION_destroySecureContainer:I = 0xd

.field static final TRANSACTION_destroySecureContainerWithPath:I = 0x52

.field static final TRANSACTION_enableShared:I = 0x6c

.field static final TRANSACTION_encryptBatchVolume:I = 0x68

.field static final TRANSACTION_encryptFormatVolume:I = 0x6a

.field static final TRANSACTION_encryptMountVolume:I = 0x69

.field static final TRANSACTION_finalizeSecureContainer:I = 0xc

.field static final TRANSACTION_finalizeSecureContainerWithPath:I = 0x53

.field static final TRANSACTION_finishMediaUpdate:I = 0x15

.field static final TRANSACTION_formatVolume:I = 0x8

.field static final TRANSACTION_getAsecVolumeState:I = 0x5c

.field static final TRANSACTION_getDeviceDriverPath:I = 0x5d

.field static final TRANSACTION_getEncryptedStatus:I = 0x6b

.field static final TRANSACTION_getMountedObbPath:I = 0x19

.field static final TRANSACTION_getPlayNotificationSounds:I = 0x60

.field static final TRANSACTION_getSecureContainerInstalledPath:I = 0x5b

.field static final TRANSACTION_getSecureContainerList:I = 0x13

.field static final TRANSACTION_getSecureContainerListAll:I = 0x5a

.field static final TRANSACTION_getSecureContainerListWithPath:I = 0x59

.field static final TRANSACTION_getSecureContainerPath:I = 0x12

.field static final TRANSACTION_getSecureContainerPathWithPath:I = 0x58

.field static final TRANSACTION_getShowSafeUnmountNotification:I = 0x62

.field static final TRANSACTION_getStorageCidNumber:I = 0x65

.field static final TRANSACTION_getStorageSerialNumber:I = 0x64

.field static final TRANSACTION_getStorageUsers:I = 0x9

.field static final TRANSACTION_getVolumeState:I = 0xa

.field static final TRANSACTION_isEncryptionEnabled:I = 0x66

.field static final TRANSACTION_isObbMounted:I = 0x18

.field static final TRANSACTION_isSecureContainerMounted:I = 0x10

.field static final TRANSACTION_isSecureContainerMountedWithPath:I = 0x56

.field static final TRANSACTION_isUsbMassStorageConnected:I = 0x3

.field static final TRANSACTION_isUsbMassStorageEnabled:I = 0x5

.field static final TRANSACTION_mountObb:I = 0x16

.field static final TRANSACTION_mountSecureContainer:I = 0xe

.field static final TRANSACTION_mountSecureContainerWithPath:I = 0x54

.field static final TRANSACTION_mountVolume:I = 0x6

.field static final TRANSACTION_registerCallBackListener:I = 0x5e

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_renameSecureContainer:I = 0x11

.field static final TRANSACTION_renameSecureContainerWithPath:I = 0x57

.field static final TRANSACTION_setEncryptionEnabled:I = 0x67

.field static final TRANSACTION_setPlayNotificationSounds:I = 0x61

.field static final TRANSACTION_setShowSafeUnmountNotification:I = 0x63

.field static final TRANSACTION_setUsbMassStorageEnabled:I = 0x4

.field static final TRANSACTION_shutdown:I = 0x14

.field static final TRANSACTION_unmountObb:I = 0x17

.field static final TRANSACTION_unmountSecureContainer:I = 0xf

.field static final TRANSACTION_unmountSecureContainerWithPath:I = 0x55

.field static final TRANSACTION_unmountVolume:I = 0x7

.field static final TRANSACTION_unregisterCallBackListener:I = 0x5f

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1223
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1224
    const-string v0, "IMountService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IMountService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 1225
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 1212
    if-nez p0, :cond_0

    .line 1213
    const/4 v1, 0x0

    .line 1219
    :goto_0
    return-object v1

    .line 1215
    :cond_0
    const-string v1, "IMountService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 1216
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IMountService;

    if-eqz v1, :cond_1

    .line 1217
    check-cast v0, Landroid/os/storage/IMountService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 1219
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/storage/IMountService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IMountService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 1228
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 41
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
    .line 1234
    sparse-switch p1, :sswitch_data_0

    .line 1807
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 1236
    :sswitch_0
    const-string v5, "IMountService"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1237
    const/4 v5, 0x1

    goto :goto_0

    .line 1240
    :sswitch_1
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v25

    .line 1243
    .local v25, listener:Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1244
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1245
    const/4 v5, 0x1

    goto :goto_0

    .line 1248
    .end local v25           #listener:Landroid/os/storage/IMountServiceListener;
    :sswitch_2
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountServiceListener;

    move-result-object v25

    .line 1251
    .restart local v25       #listener:Landroid/os/storage/IMountServiceListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterListener(Landroid/os/storage/IMountServiceListener;)V

    .line 1252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    const/4 v5, 0x1

    goto :goto_0

    .line 1256
    .end local v25           #listener:Landroid/os/storage/IMountServiceListener;
    :sswitch_3
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1257
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageConnected()Z

    move-result v34

    .line 1258
    .local v34, result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1259
    if-eqz v34, :cond_0

    const/4 v5, 0x1

    :goto_1
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    const/4 v5, 0x1

    goto :goto_0

    .line 1259
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 1263
    .end local v34           #result:Z
    :sswitch_4
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 1266
    .local v20, enable:Z
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setUsbMassStorageEnabled(Z)V

    .line 1267
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1268
    const/4 v5, 0x1

    goto :goto_0

    .line 1265
    .end local v20           #enable:Z
    :cond_1
    const/4 v5, 0x0

    move/from16 v20, v5

    goto :goto_2

    .line 1271
    :sswitch_5
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1272
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->isUsbMassStorageEnabled()Z

    move-result v34

    .line 1273
    .restart local v34       #result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1274
    if-eqz v34, :cond_2

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1275
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1274
    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    .line 1278
    .end local v34           #result:Z
    :sswitch_6
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1281
    .local v26, mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v35

    .line 1282
    .local v35, resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1283
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1284
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1287
    .end local v26           #mountPoint:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_7
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1291
    .restart local v26       #mountPoint:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1292
    .local v23, force:Z
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->unmountVolume(Ljava/lang/String;Z)V

    .line 1293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1294
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1291
    .end local v23           #force:Z
    :cond_3
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_4

    .line 1297
    .end local v26           #mountPoint:Ljava/lang/String;
    :sswitch_8
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1300
    .restart local v26       #mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v34

    .line 1301
    .local v34, result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1302
    move-object/from16 v0, p3

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1303
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1306
    .end local v26           #mountPoint:Ljava/lang/String;
    .end local v34           #result:I
    :sswitch_9
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1308
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1309
    .local v12, path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageUsers(Ljava/lang/String;)[I

    move-result-object v33

    .line 1310
    .local v33, pids:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1311
    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1312
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1315
    .end local v12           #path:Ljava/lang/String;
    .end local v33           #pids:[I
    :sswitch_a
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v26

    .line 1318
    .restart local v26       #mountPoint:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1319
    .local v38, state:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1320
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1321
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1324
    .end local v26           #mountPoint:Ljava/lang/String;
    .end local v38           #state:Ljava/lang/String;
    :sswitch_b
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1328
    .local v6, id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1330
    .local v7, sizeMb:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1332
    .local v8, fstype:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1334
    .local v9, key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .local v10, ownerUid:I
    move-object/from16 v5, p0

    .line 1335
    invoke-virtual/range {v5 .. v10}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 1336
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1337
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1338
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1342
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #sizeMb:I
    .end local v8           #fstype:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #ownerUid:I
    .end local v35           #resultCode:I
    :sswitch_c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1344
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1346
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1348
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1350
    .restart local v7       #sizeMb:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1352
    .restart local v8       #fstype:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1354
    .restart local v9       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .restart local v10       #ownerUid:I
    move-object/from16 v11, p0

    move-object v13, v6

    move v14, v7

    move-object v15, v8

    move-object/from16 v16, v9

    move/from16 v17, v10

    .line 1355
    invoke-virtual/range {v11 .. v17}, Landroid/os/storage/IMountService$Stub;->createSecureContainer(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 1356
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1358
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1362
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #sizeMb:I
    .end local v8           #fstype:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #ownerUid:I
    .end local v12           #path:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_d
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1365
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;)I

    move-result v35

    .line 1366
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1367
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1368
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1372
    .end local v6           #id:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_e
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1376
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1377
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->finalizeSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 1378
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1379
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1383
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_f
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1385
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1387
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1388
    .restart local v23       #force:Z
    :goto_5
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Z)I

    move-result v35

    .line 1389
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1390
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1391
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1387
    .end local v23           #force:Z
    .end local v35           #resultCode:I
    :cond_4
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_5

    .line 1395
    .end local v6           #id:Ljava/lang/String;
    :sswitch_10
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1399
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1401
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1402
    .restart local v23       #force:Z
    :goto_6
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->destroySecureContainer(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v35

    .line 1403
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1404
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1405
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1401
    .end local v23           #force:Z
    .end local v35           #resultCode:I
    :cond_5
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_6

    .line 1408
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    :sswitch_11
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1412
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1414
    .restart local v9       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1415
    .restart local v10       #ownerUid:I
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v9

    move v3, v10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 1416
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1417
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1418
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1422
    .end local v6           #id:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #ownerUid:I
    .end local v35           #resultCode:I
    :sswitch_12
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1426
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1428
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1430
    .restart local v9       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 1431
    .restart local v10       #ownerUid:I
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    move-object v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->mountSecureContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 1432
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1434
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1437
    .end local v6           #id:Ljava/lang/String;
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #ownerUid:I
    .end local v12           #path:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_13
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1441
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1442
    .restart local v23       #force:Z
    :goto_7
    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Z)I

    move-result v35

    .line 1443
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1444
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1445
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1441
    .end local v23           #force:Z
    .end local v35           #resultCode:I
    :cond_6
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_7

    .line 1448
    .end local v6           #id:Ljava/lang/String;
    :sswitch_14
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1452
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1454
    .restart local v6       #id:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1455
    .restart local v23       #force:Z
    :goto_8
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->unmountSecureContainer(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v35

    .line 1456
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1457
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1458
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1454
    .end local v23           #force:Z
    .end local v35           #resultCode:I
    :cond_7
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_8

    .line 1461
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    :sswitch_15
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1463
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1464
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;)Z

    move-result v39

    .line 1465
    .local v39, status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1466
    if-eqz v39, :cond_8

    const/4 v5, 0x1

    :goto_9
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1467
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1466
    :cond_8
    const/4 v5, 0x0

    goto :goto_9

    .line 1471
    .end local v6           #id:Ljava/lang/String;
    .end local v39           #status:Z
    :sswitch_16
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1473
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1475
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1476
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->isSecureContainerMounted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v39

    .line 1477
    .restart local v39       #status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1478
    if-eqz v39, :cond_9

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1479
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1478
    :cond_9
    const/4 v5, 0x0

    goto :goto_a

    .line 1482
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    .end local v39           #status:Z
    :sswitch_17
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1486
    .local v31, oldId:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 1487
    .local v28, newId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 1488
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1489
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1490
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1493
    .end local v28           #newId:Ljava/lang/String;
    .end local v31           #oldId:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_18
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1497
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1499
    .restart local v31       #oldId:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 1500
    .restart local v28       #newId:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v31

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->renameSecureContainer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 1501
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1503
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1506
    .end local v12           #path:Ljava/lang/String;
    .end local v28           #newId:Ljava/lang/String;
    .end local v31           #oldId:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_19
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1509
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1510
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1511
    move-object/from16 v0, p3

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1512
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1516
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    :sswitch_1a
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1520
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1521
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->getSecureContainerPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1522
    .local v36, ret:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1523
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1524
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1527
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    .end local v36           #ret:Ljava/lang/String;
    :sswitch_1b
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1528
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList()[Ljava/lang/String;

    move-result-object v24

    .line 1529
    .local v24, ids:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1531
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1534
    .end local v24           #ids:[Ljava/lang/String;
    :sswitch_1c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1536
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1537
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getSecureContainerList(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v24

    .line 1538
    .restart local v24       #ids:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1539
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1540
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1544
    .end local v12           #path:Ljava/lang/String;
    .end local v24           #ids:[Ljava/lang/String;
    :sswitch_1d
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1545
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getSecureContainerListAll()[Ljava/lang/String;

    move-result-object v24

    .line 1546
    .restart local v24       #ids:[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1547
    move-object/from16 v0, p3

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1548
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1552
    .end local v24           #ids:[Ljava/lang/String;
    :sswitch_1e
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1555
    .restart local v6       #id:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getSecureContainerInstalledPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1556
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1557
    move-object/from16 v0, p3

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1558
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1562
    .end local v6           #id:Ljava/lang/String;
    .end local v12           #path:Ljava/lang/String;
    :sswitch_1f
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1565
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getAsecVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 1566
    .restart local v38       #state:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1567
    move-object/from16 v0, p3

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1568
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1572
    .end local v12           #path:Ljava/lang/String;
    .end local v38           #state:Ljava/lang/String;
    :sswitch_20
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountShutdownObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountShutdownObserver;

    move-result-object v30

    .line 1576
    .local v30, observer:Landroid/os/storage/IMountShutdownObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->shutdown(Landroid/os/storage/IMountShutdownObserver;)V

    .line 1577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1578
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1581
    .end local v30           #observer:Landroid/os/storage/IMountShutdownObserver;
    :sswitch_21
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1582
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->finishMediaUpdate()V

    .line 1583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1584
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1587
    :sswitch_22
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1591
    .local v22, filename:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1593
    .restart local v9       #key:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v30

    .line 1595
    .local v30, observer:Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 1596
    .local v29, nonce:I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object v2, v9

    move-object/from16 v3, v30

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->mountObb(Ljava/lang/String;Ljava/lang/String;Landroid/os/storage/IObbActionListener;I)V

    .line 1597
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1598
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1601
    .end local v9           #key:Ljava/lang/String;
    .end local v22           #filename:Ljava/lang/String;
    .end local v29           #nonce:I
    .end local v30           #observer:Landroid/os/storage/IObbActionListener;
    :sswitch_23
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1605
    .restart local v22       #filename:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1607
    .restart local v23       #force:Z
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IObbActionListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IObbActionListener;

    move-result-object v30

    .line 1609
    .restart local v30       #observer:Landroid/os/storage/IObbActionListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v29

    .line 1610
    .restart local v29       #nonce:I
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v30

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->unmountObb(Ljava/lang/String;ZLandroid/os/storage/IObbActionListener;I)V

    .line 1611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1612
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1605
    .end local v23           #force:Z
    .end local v29           #nonce:I
    .end local v30           #observer:Landroid/os/storage/IObbActionListener;
    :cond_a
    const/4 v5, 0x0

    move/from16 v23, v5

    goto :goto_b

    .line 1615
    .end local v22           #filename:Ljava/lang/String;
    :sswitch_24
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1617
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1618
    .restart local v22       #filename:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->isObbMounted(Ljava/lang/String;)Z

    move-result v39

    .line 1619
    .restart local v39       #status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1620
    if-eqz v39, :cond_b

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1621
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1620
    :cond_b
    const/4 v5, 0x0

    goto :goto_c

    .line 1624
    .end local v22           #filename:Ljava/lang/String;
    .end local v39           #status:Z
    :sswitch_25
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v22

    .line 1627
    .restart local v22       #filename:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1628
    .local v27, mountedPath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1629
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1630
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1634
    .end local v22           #filename:Ljava/lang/String;
    .end local v27           #mountedPath:Ljava/lang/String;
    :sswitch_26
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1637
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getMountedObbPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1638
    .local v19, dpath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1639
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1640
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1644
    .end local v12           #path:Ljava/lang/String;
    .end local v19           #dpath:Ljava/lang/String;
    :sswitch_27
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountCallBackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountCallBackListener;

    move-result-object v25

    .line 1647
    .local v25, listener:Landroid/os/storage/IMountCallBackListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->registerCallBackListener(Landroid/os/storage/IMountCallBackListener;)V

    .line 1648
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1649
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1653
    .end local v25           #listener:Landroid/os/storage/IMountCallBackListener;
    :sswitch_28
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1655
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/IMountCallBackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountCallBackListener;

    move-result-object v25

    .line 1656
    .restart local v25       #listener:Landroid/os/storage/IMountCallBackListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->unregisterCallBackListener(Landroid/os/storage/IMountCallBackListener;)V

    .line 1657
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1658
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1662
    .end local v25           #listener:Landroid/os/storage/IMountCallBackListener;
    :sswitch_29
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1663
    invoke-virtual/range {p0 .. p0}, Landroid/os/storage/IMountService$Stub;->getPlayNotificationSounds()Z

    move-result v39

    .line 1664
    .restart local v39       #status:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1665
    if-eqz v39, :cond_c

    const/4 v5, 0x1

    :goto_d
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1666
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1665
    :cond_c
    const/4 v5, 0x0

    goto :goto_d

    .line 1670
    .end local v39           #status:Z
    :sswitch_2a
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1672
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    move/from16 v40, v5

    .line 1673
    .local v40, value:Z
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->setPlayNotificationSounds(Z)V

    .line 1674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1675
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1672
    .end local v40           #value:Z
    :cond_d
    const/4 v5, 0x0

    move/from16 v40, v5

    goto :goto_e

    .line 1679
    :sswitch_2b
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1681
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1682
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getShowSafeUnmountNotification(Ljava/lang/String;)Z

    move-result v36

    .line 1683
    .local v36, ret:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1684
    if-eqz v36, :cond_e

    const/4 v5, 0x1

    :goto_f
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1685
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1684
    :cond_e
    const/4 v5, 0x0

    goto :goto_f

    .line 1689
    .end local v12           #path:Ljava/lang/String;
    .end local v36           #ret:Z
    :sswitch_2c
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1693
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/4 v5, 0x1

    move/from16 v37, v5

    .line 1694
    .local v37, set:Z
    :goto_10
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setShowSafeUnmountNotification(Ljava/lang/String;Z)V

    .line 1695
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1696
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1693
    .end local v37           #set:Z
    :cond_f
    const/4 v5, 0x0

    move/from16 v37, v5

    goto :goto_10

    .line 1700
    .end local v12           #path:Ljava/lang/String;
    :sswitch_2d
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1703
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1704
    .restart local v19       #dpath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1706
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1710
    .end local v12           #path:Ljava/lang/String;
    .end local v19           #dpath:Ljava/lang/String;
    :sswitch_2e
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1713
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getStorageCidNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1714
    .restart local v19       #dpath:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1715
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1716
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1720
    .end local v12           #path:Ljava/lang/String;
    .end local v19           #dpath:Ljava/lang/String;
    :sswitch_2f
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1724
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    move/from16 v37, v5

    .line 1725
    .restart local v37       #set:Z
    :goto_11
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->isEncryptionEnabled(Ljava/lang/String;Z)Z

    move-result v36

    .line 1726
    .restart local v36       #ret:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1727
    if-eqz v36, :cond_11

    const/4 v5, 0x1

    :goto_12
    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1728
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1724
    .end local v36           #ret:Z
    .end local v37           #set:Z
    :cond_10
    const/4 v5, 0x0

    move/from16 v37, v5

    goto :goto_11

    .line 1727
    .restart local v36       #ret:Z
    .restart local v37       #set:Z
    :cond_11
    const/4 v5, 0x0

    goto :goto_12

    .line 1732
    .end local v12           #path:Ljava/lang/String;
    .end local v36           #ret:Z
    .end local v37           #set:Z
    :sswitch_30
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1734
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1736
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    move/from16 v37, v5

    .line 1737
    .restart local v37       #set:Z
    :goto_13
    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/os/storage/IMountService$Stub;->setEncryptionEnabled(Ljava/lang/String;Z)I

    move-result v35

    .line 1738
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1739
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1740
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1736
    .end local v35           #resultCode:I
    .end local v37           #set:Z
    :cond_12
    const/4 v5, 0x0

    move/from16 v37, v5

    goto :goto_13

    .line 1744
    .end local v12           #path:Ljava/lang/String;
    :sswitch_31
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1746
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1748
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1750
    .local v32, password:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1752
    .local v18, cid:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 1753
    .local v21, encmode:I
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v32

    move-object/from16 v3, v18

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/storage/IMountService$Stub;->encryptBatchVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v35

    .line 1754
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1755
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1756
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1760
    .end local v12           #path:Ljava/lang/String;
    .end local v18           #cid:Ljava/lang/String;
    .end local v21           #encmode:I
    .end local v32           #password:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_32
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1764
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1766
    .restart local v32       #password:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1767
    .restart local v18       #cid:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v32

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->encryptMountVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 1768
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1769
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1770
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1775
    .end local v12           #path:Ljava/lang/String;
    .end local v18           #cid:Ljava/lang/String;
    .end local v32           #password:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_33
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1777
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1779
    .restart local v12       #path:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1781
    .restart local v32       #password:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 1782
    .restart local v18       #cid:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    move-object/from16 v2, v32

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/storage/IMountService$Stub;->encryptFormatVolume(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v35

    .line 1783
    .restart local v35       #resultCode:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1784
    move-object/from16 v0, p3

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1785
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1789
    .end local v12           #path:Ljava/lang/String;
    .end local v18           #cid:Ljava/lang/String;
    .end local v32           #password:Ljava/lang/String;
    .end local v35           #resultCode:I
    :sswitch_34
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1791
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1792
    .restart local v12       #path:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->getEncryptedStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1793
    .local v36, ret:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1794
    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1795
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1798
    .end local v12           #path:Ljava/lang/String;
    .end local v36           #ret:Ljava/lang/String;
    :sswitch_35
    const-string v5, "IMountService"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1800
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    const/4 v5, 0x1

    move/from16 v20, v5

    .line 1801
    .restart local v20       #enable:Z
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/storage/IMountService$Stub;->enableShared(Z)V

    .line 1802
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1803
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1800
    .end local v20           #enable:Z
    :cond_13
    const/4 v5, 0x0

    move/from16 v20, v5

    goto :goto_14

    .line 1234
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
        0xc -> :sswitch_d
        0xd -> :sswitch_f
        0xe -> :sswitch_11
        0xf -> :sswitch_13
        0x10 -> :sswitch_15
        0x11 -> :sswitch_17
        0x12 -> :sswitch_19
        0x13 -> :sswitch_1b
        0x14 -> :sswitch_20
        0x15 -> :sswitch_21
        0x16 -> :sswitch_22
        0x17 -> :sswitch_23
        0x18 -> :sswitch_24
        0x19 -> :sswitch_25
        0x51 -> :sswitch_c
        0x52 -> :sswitch_10
        0x53 -> :sswitch_e
        0x54 -> :sswitch_12
        0x55 -> :sswitch_14
        0x56 -> :sswitch_16
        0x57 -> :sswitch_18
        0x58 -> :sswitch_1a
        0x59 -> :sswitch_1c
        0x5a -> :sswitch_1d
        0x5b -> :sswitch_1e
        0x5c -> :sswitch_1f
        0x5d -> :sswitch_26
        0x5e -> :sswitch_27
        0x5f -> :sswitch_28
        0x60 -> :sswitch_29
        0x61 -> :sswitch_2a
        0x62 -> :sswitch_2b
        0x63 -> :sswitch_2c
        0x64 -> :sswitch_2d
        0x65 -> :sswitch_2e
        0x66 -> :sswitch_2f
        0x67 -> :sswitch_30
        0x68 -> :sswitch_31
        0x69 -> :sswitch_32
        0x6a -> :sswitch_33
        0x6b -> :sswitch_34
        0x6c -> :sswitch_35
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
