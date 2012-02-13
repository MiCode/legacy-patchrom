.class public abstract Lcom/motorola/spellchecker/ISpellingCheckService$Stub;
.super Landroid/os/Binder;
.source "ISpellingCheckService.java"

# interfaces
.implements Lcom/motorola/spellchecker/ISpellingCheckService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/spellchecker/ISpellingCheckService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/spellchecker/ISpellingCheckService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.spellchecker.ISpellingCheckService"

.field static final TRANSACTION_addWord:I = 0x4

.field static final TRANSACTION_afterImeAddWord:I = 0xd

.field static final TRANSACTION_beforeImeAddWord:I = 0xc

.field static final TRANSACTION_checkSug:I = 0x3

.field static final TRANSACTION_checkWord:I = 0x2

.field static final TRANSACTION_closeDict:I = 0x6

.field static final TRANSACTION_deregisterClient:I = 0xb

.field static final TRANSACTION_getDictEncoding:I = 0x5

.field static final TRANSACTION_openDict:I = 0x1

.field static final TRANSACTION_registerClient:I = 0xa

.field static final TRANSACTION_setEnabled:I = 0x7

.field static final TRANSACTION_setFlaggingEnabled:I = 0x8

.field static final TRANSACTION_setInputLanguage:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.motorola.spellchecker.ISpellingCheckService"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/spellchecker/ISpellingCheckService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/spellchecker/ISpellingCheckService;
    .locals 2
    .parameter "obj"

    .prologue
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "com.motorola.spellchecker.ISpellingCheckService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/spellchecker/ISpellingCheckService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/motorola/spellchecker/ISpellingCheckService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/motorola/spellchecker/ISpellingCheckService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/motorola/spellchecker/ISpellingCheckService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v6, 0x0

    const/4 v4, 0x1

    const-string v5, "com.motorola.spellchecker.ISpellingCheckService"

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    :sswitch_0
    const-string v3, "com.motorola.spellchecker.ISpellingCheckService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    :sswitch_1
    const-string v3, "com.motorola.spellchecker.ISpellingCheckService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/spellchecker/ISpellingCheckService$Stub;->openDict(Ljava/lang/String;)I

    move-result v2

    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    goto :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:I
    :sswitch_2
    const-string v3, "com.motorola.spellchecker.ISpellingCheckService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .local v1, _arg1:[B
    invoke-virtual {p0, v0, v1}, Lcom/motorola/spellchecker/ISpellingCheckService$Stub;->checkWord(I[B)I

    move-result v2

    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:[B
    .end local v2           #_result:I
    :sswitch_3
    const-string v3, "com.motorola.spellchecker.ISpellingCheckService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg1:[B
    invoke-virtual {p0, v0, v1}, Lcom/motorola/spellchecker/ISpellingCheckService$Stub;->checkSug(I[B)[B

    move-result-object v2

    .local v2, _result:[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeByteArray([B)V

    move v3, v4

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:[B
    .end local v2           #_result:[B
    :sswitch_4
    const-string v3, "com.motorola.spellchecker.ISpellingCheckService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .restart local v1       #_arg1:[B
    invoke-virtual {p0, v0, v1}, Lcom/motorola/spellchecker/ISpellingCheckService$Stub;->addWord(I[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v1           #_arg1:[B
    :sswitch_5
    const-string v3, "com.motorola.spellchecker.ISpellingCheckService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/spellchecker/ISpellingCheckService$Stub;->getDictEncoding(I)Ljava/lang/String;

    move-result-object v2

    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    goto :goto_0

    .end local v0           #_arg0:I
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v3, "com.motorola.spellchecker.ISpellingCheckService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/spellchecker/ISpellingCheckService$Stub;->closeDict(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_7
    const-string v3, "com.motorola.spellchecker.ISpellingCheckService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v4

    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Lcom/motorola/spellchecker/ISpellingCheckService$Stub;->setEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_0
    move v0, v6

    goto :goto_1

    :sswitch_8
    const-string v3, "com.motorola.spellchecker.ISpellingCheckService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v4

    .restart local v0       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/motorola/spellchecker/ISpellingCheckService$Stub;->setFlaggingEnabled(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_1
    move v0, v6

    goto :goto_2

    :sswitch_9
    const-string v3, "com.motorola.spellchecker.ISpellingCheckService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/spellchecker/ISpellingCheckService$Stub;->setInputLanguage(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    goto/16 :goto_0

    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_a
    const-string v3, "com.motorola.spellchecker.ISpellingCheckService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/motorola/spellchecker/ISpellingCheckClient$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/spellchecker/ISpellingCheckClient;

    move-result-object v0

    .local v0, _arg0:Lcom/motorola/spellchecker/ISpellingCheckClient;
    invoke-virtual {p0, v0}, Lcom/motorola/spellchecker/ISpellingCheckService$Stub;->registerClient(Lcom/motorola/spellchecker/ISpellingCheckClient;)I

    move-result v2

    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    goto/16 :goto_0

    .end local v0           #_arg0:Lcom/motorola/spellchecker/ISpellingCheckClient;
    .end local v2           #_result:I
    :sswitch_b
    const-string v3, "com.motorola.spellchecker.ISpellingCheckService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/spellchecker/ISpellingCheckService$Stub;->deregisterClient(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    goto/16 :goto_0

    .end local v0           #_arg0:I
    :sswitch_c
    const-string v3, "com.motorola.spellchecker.ISpellingCheckService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/spellchecker/ISpellingCheckService$Stub;->beforeImeAddWord()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    goto/16 :goto_0

    :sswitch_d
    const-string v3, "com.motorola.spellchecker.ISpellingCheckService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/spellchecker/ISpellingCheckService$Stub;->afterImeAddWord()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    goto/16 :goto_0

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
