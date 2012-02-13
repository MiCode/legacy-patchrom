.class public Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;
.super Ljava/lang/Object;
.source "XMPMetaJniImpl.java"

# interfaces
.implements Lcom/motorola/android/xmp/XMPMeta;
.implements Lcom/motorola/android/xmp/XMPConst;


# static fields
.field private static final TAG:Ljava/lang/String; = "XMPMeta Jni"


# instance fields
.field private exceptionNum:I

.field private nativeXMPMetaHandler:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    :try_start_0
    const-string v1, "Xmp_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "XMPMeta Jni"

    const-string v2, "xmp_jni library not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, "XMPMeta Jni"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "XMPMeta Jni"

    const-string v0, "Instance XMPMetaJniImpl and connected to native lib"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->createXMPMetaNat()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XMPMeta Jni"

    const-string v0, "Failed to instance XMPMetaJniImpl and connected to native lib!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "nativeAvailable"

    .prologue
    const-string v1, "XMPMeta Jni"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_1

    const-string v0, "XMPMeta Jni"

    const-string v0, "Instance XMPMetaJniImpl and connected to native lib"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->createXMPMetaNat()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XMPMeta Jni"

    const-string v0, "Failed to instance XMPMetaJniImpl and connected to native lib!!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "XMPMeta Jni"

    const-string v0, "Instance XMPMetaJniImpl no need connect to native lib"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->nativeXMPMetaHandler:I

    goto :goto_0
.end method

.method private native appendArrayItemNat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
.end method

.method private native countArrayItemsNat(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native createXMPMetaNat()Z
.end method

.method private native deleteArrayItemNat(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native deletePropertyNat(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native deleteQualifierNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native deleteStructFieldNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native doesArrayItemExistNat(Ljava/lang/String;Ljava/lang/String;I)Z
.end method

.method private native doesPropertyExistNat(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native doesQualifierExistNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native doesStructFieldExistNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native getArrayItemNat(Ljava/lang/String;Ljava/lang/String;ILcom/motorola/android/xmp/impl/XMPPropertyImpl;)Z
.end method

.method private native getLocalizedTextNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/impl/XMPPropertyImpl;)Z
.end method

.method private native getPropertyBooleanNat(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native getPropertyDateNat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native getPropertyDoubleNat(Ljava/lang/String;Ljava/lang/String;)D
.end method

.method private native getPropertyIntegerNat(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native getPropertyLongNat(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method private native getPropertyNat(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/impl/XMPPropertyImpl;)Z
.end method

.method private native getQualifierNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/impl/XMPPropertyImpl;)Z
.end method

.method private native getStructFieldNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/impl/XMPPropertyImpl;)Z
.end method

.method private native insertArrayItemNat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
.end method

.method private native parseFromBufferNat([BI)V
.end method

.method private native releaseXMPMetaNat()Z
.end method

.method private native serializeToBufferNat(I)[B
.end method

.method private native setArrayItemNat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
.end method

.method private native setLocalizedTextNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native setPropertyBooleanNat(Ljava/lang/String;Ljava/lang/String;ZI)V
.end method

.method private native setPropertyDateNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native setPropertyDoubleNat(Ljava/lang/String;Ljava/lang/String;DI)V
.end method

.method private native setPropertyIntegerNat(Ljava/lang/String;Ljava/lang/String;II)V
.end method

.method private native setPropertyLongNat(Ljava/lang/String;Ljava/lang/String;JI)V
.end method

.method private native setPropertyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native setQualifierNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native setStructFieldNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method


# virtual methods
.method public declared-synchronized appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .locals 6
    .parameter "schemaNS"
    .parameter "arrayName"
    .parameter "arrayOptions"
    .parameter "itemValue"
    .parameter "itemOptions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v0, "XMPMeta Jni"

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->verifySetOptions(Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/motorola/android/xmp/options/PropertyOptions;

    move-result-object p3

    invoke-static {p5, p4}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->verifySetOptions(Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/motorola/android/xmp/options/PropertyOptions;

    move-result-object p5

    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter appendArrayItem, schema:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",ArrayName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",arrayoptions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",itemValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",itemOptions:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->nativeXMPMetaHandler:I

    if-nez v0, :cond_0

    const-string v0, "XMPMeta Jni"

    const-string v1, "nativeXMPMetaHandler is not opened "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "nativeXMPMetaHandler is null"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-virtual {p3}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v3

    invoke-virtual {p5}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->appendArrayItemNat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized appendArrayItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "schemaNS"
    .parameter "arrayName"
    .parameter "itemValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized countArrayItems(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "schemaNS"
    .parameter "arrayName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "XMPMeta Jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter countArrayItems, schemaNS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "arrayName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->countArrayItemsNat(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .local v0, count:I
    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local v0           #count:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized deleteArrayItem(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "schemaNS"
    .parameter "arrayName"
    .parameter "itemIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v0, "XMPMeta Jni"

    monitor-enter p0

    :try_start_0
    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter deleteArrayItem,schemaNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "arrayName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "itemIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    if-gez p3, :cond_0

    const-string v0, "XMPMeta Jni"

    const-string v1, "Parameter error in deleteArrayItem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "parameter is not correct"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->deleteArrayItemNat(Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized deleteProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "schemaNS"
    .parameter "propName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter deleteProperty,schemaNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "propName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->deletePropertyNat(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "qualNS"
    .parameter "qualName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter deleteQualifier, schemaNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", propName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", qualNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", qualName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p4}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->deleteQualifierNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "schemaNS"
    .parameter "structName"
    .parameter "fieldNS"
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter deleteStructField, schemaNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", structname"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fieldNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fieldName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertStructName(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->deleteStructFieldNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized doesArrayItemExist(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4
    .parameter "schemaNS"
    .parameter "arrayName"
    .parameter "itemIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v1, "XMPMeta Jni"

    monitor-enter p0

    :try_start_0
    const-string v1, "XMPMeta Jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter doesArrayItemExist, schemaNS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "arrayName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "itemIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    if-gez p3, :cond_0

    const-string v1, "XMPMeta Jni"

    const-string v2, "Parameter error in doesArrayItemExist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/motorola/android/xmp/XMPException;

    const-string v2, "parameter is not correct"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    const/4 v1, -0x1

    :try_start_1
    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->doesArrayItemExistNat(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    .local v0, result:Z
    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "schemaNS"
    .parameter "propName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "XMPMeta Jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter doesPropertyExist, schemaNS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "propName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->doesPropertyExistNat(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, result:Z
    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local v0           #result:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized doesQualifierExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "qualNS"
    .parameter "qualName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "XMPMeta Jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter doesQualifierExist, schemaNS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",propName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",qualNS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",qualName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p4}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .local v0, result:Z
    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->doesQualifierExistNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local v0           #result:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized doesStructFieldExist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "schemaNS"
    .parameter "structName"
    .parameter "fieldNS"
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "XMPMeta Jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter doesStructFieldExist, schemaNS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",structName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fieldNS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",fieldName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertStructName(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .local v0, result:Z
    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->doesStructFieldExistNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local v0           #result:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->releaseXMPMetaNat()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XMPMeta Jni"

    const-string v1, "smooth release SXMPMeta instance"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public declared-synchronized getArrayItem(Ljava/lang/String;Ljava/lang/String;I)Lcom/motorola/android/xmp/properties/XMPProperty;
    .locals 5
    .parameter "schemaNS"
    .parameter "arrayName"
    .parameter "itemIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v2, "XMPMeta Jni"

    monitor-enter p0

    :try_start_0
    const-string v2, "XMPMeta Jni"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter getArrayItem,schemaNS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "arrayName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "itemIndex:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    if-gez p3, :cond_0

    const-string v2, "XMPMeta Jni"

    const-string v3, "Parameter error in getArrayItem"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/motorola/android/xmp/XMPException;

    const-string v3, "parameter is not correct"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v4}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    :try_start_1
    new-instance v0, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;

    invoke-direct {v0}, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;-><init>()V

    .local v0, property:Lcom/motorola/android/xmp/impl/XMPPropertyImpl;
    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->getArrayItemNat(Ljava/lang/String;Ljava/lang/String;ILcom/motorola/android/xmp/impl/XMPPropertyImpl;)Z

    move-result v1

    .local v1, result:Z
    iget v2, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v2}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    move-object v2, v0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/android/xmp/properties/XMPProperty;
    .locals 8
    .parameter "schemaNS"
    .parameter "altTextName"
    .parameter "genericLang"
    .parameter "specificLang"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    :try_start_0
    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter getLocalizedText, schemaNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", altTextName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",genericLang:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",specificLang:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSpecificLang(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSpecificLang(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-static {p3}, Lcom/motorola/android/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p3, v0

    :goto_0
    invoke-static {p4}, Lcom/motorola/android/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    new-instance v5, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;

    invoke-direct {v5}, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;-><init>()V

    .local v5, property:Lcom/motorola/android/xmp/impl/XMPPropertyImpl;
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->getLocalizedTextNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/impl/XMPPropertyImpl;)Z

    move-result v6

    .local v6, result:Z
    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_1

    move-object v0, v5

    :goto_1
    monitor-exit p0

    return-object v0

    .end local v5           #property:Lcom/motorola/android/xmp/impl/XMPPropertyImpl;
    .end local v6           #result:Z
    :cond_0
    move-object p3, v7

    goto :goto_0

    .restart local v5       #property:Lcom/motorola/android/xmp/impl/XMPPropertyImpl;
    .restart local v6       #result:Z
    :cond_1
    move-object v0, v7

    goto :goto_1

    .end local v5           #property:Lcom/motorola/android/xmp/impl/XMPPropertyImpl;
    .end local v6           #result:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNativeHandler()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->nativeXMPMetaHandler:I

    return v0
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/android/xmp/properties/XMPProperty;
    .locals 5
    .parameter "schemaNS"
    .parameter "propName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v2, "XMPMeta Jni"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter getProperty schemaNS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "propName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;

    invoke-direct {v0}, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;-><init>()V

    .local v0, property:Lcom/motorola/android/xmp/impl/XMPPropertyImpl;
    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->getPropertyNat(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/impl/XMPPropertyImpl;)Z

    move-result v1

    .local v1, result:Z
    iget v2, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v2}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    move-object v2, v0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .end local v0           #property:Lcom/motorola/android/xmp/impl/XMPPropertyImpl;
    .end local v1           #result:Z
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getPropertyBase64(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .parameter "schemaNS"
    .parameter "propName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "XMPMeta Jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter getPropertyBase64,schemaNS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",propName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, value:Ljava/lang/String;
    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->decodeBase64(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .end local v0           #value:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPropertyBoolean(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 4
    .parameter "schemaNS"
    .parameter "propName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "XMPMeta Jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter getPropertyBoolean,schemaNS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",propName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->getPropertyBooleanNat(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, result:Z
    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .end local v0           #result:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPropertyDate(Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/android/xmp/XMPDateTime;
    .locals 4
    .parameter "schemaNS"
    .parameter "propName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v1, "XMPMeta Jni"

    monitor-enter p0

    :try_start_0
    const-string v1, "XMPMeta Jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter getPropertyDate,schemaNS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",propName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->getPropertyDateNat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, strDate:Ljava/lang/String;
    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "XMPMeta Jni"

    const-string v2, "Can not get the date property"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    new-instance v1, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v1, v0}, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #strDate:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPropertyDouble(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Double;
    .locals 5
    .parameter "schemaNS"
    .parameter "propName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v2, "XMPMeta Jni"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter getPropertyDouble,schemaNS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",propName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->getPropertyDoubleNat(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    .local v0, result:D
    iget v2, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v2}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .end local v0           #result:D
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getPropertyInteger(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter "schemaNS"
    .parameter "propName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "XMPMeta Jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter getPropertyInteger,schemaNS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",propName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->getPropertyIntegerNat(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .local v0, result:I
    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    .end local v0           #result:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getPropertyLong(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Long;
    .locals 5
    .parameter "schemaNS"
    .parameter "propName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v2, "XMPMeta Jni"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter getPropertyLong,schemaNS:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",propName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->getPropertyLongNat(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .local v0, result:J
    iget v2, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v2}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    monitor-exit p0

    return-object v2

    .end local v0           #result:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "schemaNS"
    .parameter "propName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "XMPMeta Jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter getPropertyString,schemaNS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",propName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;

    invoke-direct {v0}, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;-><init>()V

    .local v0, property:Lcom/motorola/android/xmp/impl/XMPPropertyImpl;
    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-direct {p0, p1, p2, v0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->getPropertyNat(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/impl/XMPPropertyImpl;)Z

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .end local v0           #property:Lcom/motorola/android/xmp/impl/XMPPropertyImpl;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/android/xmp/properties/XMPProperty;
    .locals 7
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "qualNS"
    .parameter "qualName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter getQualifier ,schemaNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "propName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",qualNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",qualName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    new-instance v5, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;

    invoke-direct {v5}, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;-><init>()V

    .local v5, property:Lcom/motorola/android/xmp/impl/XMPPropertyImpl;
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->getQualifierNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/impl/XMPPropertyImpl;)Z

    move-result v6

    .local v6, result:Z
    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    move-object v0, v5

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .end local v5           #property:Lcom/motorola/android/xmp/impl/XMPPropertyImpl;
    .end local v6           #result:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/motorola/android/xmp/properties/XMPProperty;
    .locals 7
    .parameter "schemaNS"
    .parameter "structName"
    .parameter "fieldNS"
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter getStructField,schemaNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",structName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fieldNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fieldName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertStructName(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    new-instance v5, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;

    invoke-direct {v5}, Lcom/motorola/android/xmp/impl/XMPPropertyImpl;-><init>()V

    .local v5, property:Lcom/motorola/android/xmp/impl/XMPPropertyImpl;
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->getStructFieldNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/impl/XMPPropertyImpl;)Z

    move-result v6

    .local v6, result:Z
    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    move-object v0, v5

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .end local v5           #property:Lcom/motorola/android/xmp/impl/XMPPropertyImpl;
    .end local v6           #result:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "schemaNS"
    .parameter "arrayName"
    .parameter "itemIndex"
    .parameter "itemValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->insertArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insertArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .locals 6
    .parameter "schemaNS"
    .parameter "arrayName"
    .parameter "itemIndex"
    .parameter "itemValue"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v0, "XMPMeta Jni"

    monitor-enter p0

    :try_start_0
    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertArrayItem, schemaNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "arrayName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "itemIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "itemValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    if-gez p3, :cond_0

    const-string v0, "XMPMeta Jni"

    const-string v1, "parameter error in insertArrayItem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "buffer is null in insertArrayItem"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {p5, p4}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->verifySetOptions(Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/motorola/android/xmp/options/PropertyOptions;

    move-result-object p5

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-virtual {p5}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->insertArrayItemNat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized parseFromBuffer([BLcom/motorola/android/xmp/options/ParseOptions;)V
    .locals 3
    .parameter "buffer"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v0, "XMPMeta Jni"

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "XMPMeta Jni"

    const-string v1, "buffer is null in parseFromBuffer!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "buffer is null inparseFromBuffer "

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    if-eqz p2, :cond_2

    :goto_0
    :try_start_1
    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter parseFromBuffer!,options"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/motorola/android/xmp/options/ParseOptions;->getOptions()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-virtual {p2}, Lcom/motorola/android/xmp/options/ParseOptions;->getOptions()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->parseFromBufferNat([BI)V

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-instance v0, Lcom/motorola/android/xmp/options/ParseOptions;

    invoke-direct {v0}, Lcom/motorola/android/xmp/options/ParseOptions;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object p2, v0

    goto :goto_0
.end method

.method public declared-synchronized serializeToBuffer(Lcom/motorola/android/xmp/options/SerializeOptions;)[B
    .locals 4
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    if-eqz p1, :cond_0

    :goto_0
    :try_start_0
    const-string v1, "XMPMeta Jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter serializeToBuffer! options:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/android/xmp/options/SerializeOptions;->getOptions()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-virtual {p1}, Lcom/motorola/android/xmp/options/SerializeOptions;->getOptions()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->serializeToBufferNat(I)[B

    move-result-object v0

    .local v0, resultBuffer:[B
    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local v0           #resultBuffer:[B
    :cond_0
    :try_start_1
    new-instance v1, Lcom/motorola/android/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/motorola/android/xmp/options/SerializeOptions;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .parameter "schemaNS"
    .parameter "arrayName"
    .parameter "itemIndex"
    .parameter "itemValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setArrayItem(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .locals 6
    .parameter "schemaNS"
    .parameter "arrayName"
    .parameter "itemIndex"
    .parameter "itemValue"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v0, "XMPMeta Jni"

    monitor-enter p0

    :try_start_0
    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setArrayItem,schemaNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "arrayName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "itemIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "itemValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "options:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p5, p4}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->verifySetOptions(Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/motorola/android/xmp/options/PropertyOptions;

    move-result-object p5

    if-gez p3, :cond_0

    const-string v0, "XMPMeta Jni"

    const-string v1, "parameter error in insertArrayItem"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "buffer is null in insertArrayItem"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v0, -0x1

    :try_start_1
    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-virtual {p5}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setArrayItemNat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "schemaNS"
    .parameter "altTextName"
    .parameter "genericLang"
    .parameter "specificLang"
    .parameter "itemValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .locals 7
    .parameter "schemaNS"
    .parameter "altTextName"
    .parameter "genericLang"
    .parameter "specificLang"
    .parameter "itemValue"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertArrayName(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSpecificLang(Ljava/lang/String;)V

    invoke-static {p5}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    if-nez p3, :cond_0

    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "Empty generic language"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-static {p6, p5}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->verifySetOptions(Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/motorola/android/xmp/options/PropertyOptions;

    move-result-object p6

    if-eqz p3, :cond_1

    invoke-static {p3}, Lcom/motorola/android/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p3, v0

    :goto_0
    invoke-static {p4}, Lcom/motorola/android/xmp/impl/Utils;->normalizeLangValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter setLocalizedText, schemaNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",altTextName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",genericLang:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",specificLang:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",itemValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",options:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-virtual {p6}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setLocalizedTextNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    move-object p3, v0

    goto :goto_0
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "propValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .locals 4
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "propValue"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, strPropValue:Ljava/lang/String;
    invoke-static {p4, p3}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->verifySetOptions(Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/motorola/android/xmp/options/PropertyOptions;

    move-result-object p4

    const-string v1, "XMPMeta Jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProperty  schemaNS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "propName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "propValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "options:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-virtual {p4}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setPropertyNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #strPropValue:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPropertyBase64(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "propValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setPropertyBase64(Ljava/lang/String;Ljava/lang/String;[BLcom/motorola/android/xmp/options/PropertyOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPropertyBase64(Ljava/lang/String;Ljava/lang/String;[BLcom/motorola/android/xmp/options/PropertyOptions;)V
    .locals 3
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "propValue"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "XMPMeta Jni"

    const-string v2, "Enter setPropertyBase64!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p4, p3}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->verifySetOptions(Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/motorola/android/xmp/options/PropertyOptions;

    move-result-object p4

    invoke-static {p3}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->encodeBase64([B)Ljava/lang/String;

    move-result-object v0

    .local v0, encodedValue:Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #encodedValue:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPropertyBoolean(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "propValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setPropertyBoolean(Ljava/lang/String;Ljava/lang/String;ZLcom/motorola/android/xmp/options/PropertyOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPropertyBoolean(Ljava/lang/String;Ljava/lang/String;ZLcom/motorola/android/xmp/options/PropertyOptions;)V
    .locals 3
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "propValue"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter setPropertyBoolean,schemaNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",propName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",propValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",options:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->verifySetOptions(Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/motorola/android/xmp/options/PropertyOptions;

    move-result-object p4

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-virtual {p4}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setPropertyBooleanNat(Ljava/lang/String;Ljava/lang/String;ZI)V

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPropertyDate(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/XMPDateTime;)V
    .locals 1
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "propValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setPropertyDate(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/XMPDateTime;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPropertyDate(Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/XMPDateTime;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .locals 4
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "propValue"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "XMPMeta Jni"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter setPropertyDate,schemaNS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",propName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "propValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",options:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p4, p3}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->verifySetOptions(Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/motorola/android/xmp/options/PropertyOptions;

    move-result-object p4

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, propValueStr:Ljava/lang/String;
    invoke-static {p3}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-virtual {p4}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setPropertyDateNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget v1, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v1}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0           #propValueStr:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setPropertyDouble(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 6
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "propValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setPropertyDouble(Ljava/lang/String;Ljava/lang/String;DLcom/motorola/android/xmp/options/PropertyOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPropertyDouble(Ljava/lang/String;Ljava/lang/String;DLcom/motorola/android/xmp/options/PropertyOptions;)V
    .locals 6
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "propValue"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter setPropertyBoolean,schemaNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",propName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",propValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",options:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->verifySetOptions(Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/motorola/android/xmp/options/PropertyOptions;

    move-result-object p5

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-virtual {p5}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setPropertyDoubleNat(Ljava/lang/String;Ljava/lang/String;DI)V

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPropertyInteger(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "propValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;ILcom/motorola/android/xmp/options/PropertyOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPropertyInteger(Ljava/lang/String;Ljava/lang/String;ILcom/motorola/android/xmp/options/PropertyOptions;)V
    .locals 3
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "propValue"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter setProperty,schemaNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",propName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",propValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",options:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->verifySetOptions(Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/motorola/android/xmp/options/PropertyOptions;

    move-result-object p4

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-virtual {p4}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setPropertyIntegerNat(Ljava/lang/String;Ljava/lang/String;II)V

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPropertyLong(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "propValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setPropertyLong(Ljava/lang/String;Ljava/lang/String;JLcom/motorola/android/xmp/options/PropertyOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPropertyLong(Ljava/lang/String;Ljava/lang/String;JLcom/motorola/android/xmp/options/PropertyOptions;)V
    .locals 6
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "propValue"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter setPropertyBoolean,schemaNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",propName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",propValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",options:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->verifySetOptions(Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/motorola/android/xmp/options/PropertyOptions;

    move-result-object p5

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-virtual {p5}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setPropertyLongNat(Ljava/lang/String;Ljava/lang/String;JI)V

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "qualNS"
    .parameter "qualName"
    .parameter "qualValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setQualifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .locals 7
    .parameter "schemaNS"
    .parameter "propName"
    .parameter "qualNS"
    .parameter "qualName"
    .parameter "qualValue"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertPropName(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p5}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p6, p5}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->verifySetOptions(Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/motorola/android/xmp/options/PropertyOptions;

    move-result-object p6

    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setQualifier, schemaNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",propName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",qualNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", qualName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",qualValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",options:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-virtual {p6}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setQualifierNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "schemaNS"
    .parameter "structName"
    .parameter "fieldNS"
    .parameter "fieldName"
    .parameter "fieldValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStructField(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/motorola/android/xmp/options/PropertyOptions;)V
    .locals 7
    .parameter "schemaNS"
    .parameter "structName"
    .parameter "fieldNS"
    .parameter "fieldName"
    .parameter "fieldValue"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v0, "XMPMeta Jni"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter deleteStructField, schemaNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", structname"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fieldNS:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",fieldName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",options:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertStructName(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertSchemaNS(Ljava/lang/String;)V

    invoke-static {p4}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p5}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    invoke-static {p6, p5}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->verifySetOptions(Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/motorola/android/xmp/options/PropertyOptions;

    move-result-object p6

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-virtual {p6}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->setStructFieldNat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget v0, p0, Lcom/motorola/android/xmp/impl/XMPMetaJniImpl;->exceptionNum:I

    invoke-static {v0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
