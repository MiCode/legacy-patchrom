.class public abstract Landroid/os/storage/IEncryptService$Stub;
.super Landroid/os/Binder;
.source "IEncryptService.java"

# interfaces
.implements Landroid/os/storage/IEncryptService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/storage/IEncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/storage/IEncryptService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "IEncryptService"

.field static final TRANSACTION_formatVolume:I = 0x3

.field static final TRANSACTION_mountVolume:I = 0x1

.field static final TRANSACTION_processBatchData:I = 0x7

.field static final TRANSACTION_registerListener:I = 0x8

.field static final TRANSACTION_setEncryptionEnabled:I = 0x5

.field static final TRANSACTION_setPassword:I = 0x4

.field static final TRANSACTION_setRecoveryPassword:I = 0x6

.field static final TRANSACTION_unmountVolume:I = 0x2

.field static final TRANSACTION_unregisterListener:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 263
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 264
    const-string v0, "IEncryptService"

    invoke-virtual {p0, p0, v0}, Landroid/os/storage/IEncryptService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 252
    if-nez p0, :cond_0

    .line 253
    const/4 v1, 0x0

    .line 259
    :goto_0
    return-object v1

    .line 255
    :cond_0
    const-string v1, "IEncryptService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 256
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/storage/IEncryptService;

    if-eqz v1, :cond_1

    .line 257
    check-cast v0, Landroid/os/storage/IEncryptService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 259
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/storage/IEncryptService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/storage/IEncryptService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 268
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
    .line 275
    sparse-switch p1, :sswitch_data_0

    .line 364
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 277
    :sswitch_0
    const-string v8, "IEncryptService"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    const/4 v8, 0x1

    goto :goto_0

    .line 282
    :sswitch_1
    const-string v8, "IEncryptService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/IEncryptServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptServiceListener;

    move-result-object v2

    .line 285
    .local v2, listener:Landroid/os/storage/IEncryptServiceListener;
    invoke-virtual {p0, v2}, Landroid/os/storage/IEncryptService$Stub;->registerListener(Landroid/os/storage/IEncryptServiceListener;)V

    .line 286
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 287
    const/4 v8, 0x1

    goto :goto_0

    .line 290
    .end local v2           #listener:Landroid/os/storage/IEncryptServiceListener;
    :sswitch_2
    const-string v8, "IEncryptService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/storage/IEncryptServiceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IEncryptServiceListener;

    move-result-object v2

    .line 293
    .restart local v2       #listener:Landroid/os/storage/IEncryptServiceListener;
    invoke-virtual {p0, v2}, Landroid/os/storage/IEncryptService$Stub;->unregisterListener(Landroid/os/storage/IEncryptServiceListener;)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 295
    const/4 v8, 0x1

    goto :goto_0

    .line 299
    .end local v2           #listener:Landroid/os/storage/IEncryptServiceListener;
    :sswitch_3
    const-string v8, "IEncryptService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 302
    .local v3, mountPoint:Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/storage/IEncryptService$Stub;->mountVolume(Ljava/lang/String;)I

    move-result v6

    .line 303
    .local v6, resultCode:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v8, 0x1

    goto :goto_0

    .line 308
    .end local v3           #mountPoint:Ljava/lang/String;
    .end local v6           #resultCode:I
    :sswitch_4
    const-string v8, "IEncryptService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 312
    .restart local v3       #mountPoint:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    move v1, v8

    .line 313
    .local v1, force:Z
    :goto_1
    invoke-virtual {p0, v3, v1}, Landroid/os/storage/IEncryptService$Stub;->unmountVolume(Ljava/lang/String;Z)V

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    const/4 v8, 0x1

    goto :goto_0

    .line 312
    .end local v1           #force:Z
    :cond_0
    const/4 v8, 0x0

    move v1, v8

    goto :goto_1

    .line 318
    .end local v3           #mountPoint:Ljava/lang/String;
    :sswitch_5
    const-string v8, "IEncryptService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 321
    .restart local v3       #mountPoint:Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/storage/IEncryptService$Stub;->formatVolume(Ljava/lang/String;)I

    move-result v5

    .line 322
    .local v5, result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    const/4 v8, 0x1

    goto :goto_0

    .line 327
    .end local v3           #mountPoint:Ljava/lang/String;
    .end local v5           #result:I
    :sswitch_6
    const-string v8, "IEncryptService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, password:Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/os/storage/IEncryptService$Stub;->setPassword(Ljava/lang/String;)V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 337
    .end local v4           #password:Ljava/lang/String;
    :sswitch_7
    const-string v8, "IEncryptService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 340
    .restart local v4       #password:Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/os/storage/IEncryptService$Stub;->setRecoveryPassword(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 346
    .end local v4           #password:Ljava/lang/String;
    :sswitch_8
    const-string v8, "IEncryptService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Landroid/os/storage/IEncryptService$Stub;->processBatchData()V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 354
    :sswitch_9
    const-string v8, "IEncryptService"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 358
    .local v7, sPath:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    move v0, v8

    .line 359
    .local v0, bSet:Z
    :goto_2
    invoke-virtual {p0, v7, v0}, Landroid/os/storage/IEncryptService$Stub;->setEncryptionEnabled(Ljava/lang/String;Z)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 358
    .end local v0           #bSet:Z
    :cond_1
    const/4 v8, 0x0

    move v0, v8

    goto :goto_2

    .line 275
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_9
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_1
        0x9 -> :sswitch_2
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
