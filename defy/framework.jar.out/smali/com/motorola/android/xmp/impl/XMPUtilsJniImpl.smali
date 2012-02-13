.class public Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;
.super Ljava/lang/Object;
.source "XMPUtilsJniImpl.java"

# interfaces
.implements Lcom/motorola/android/xmp/XMPConst;


# static fields
.field public static final INIT_EXCEPTION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "XMPUtilImpl"

.field private static exceptionNum:I

.field private static sErrorNumMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->sErrorNumMap:Ljava/util/HashMap;

    sget-object v1, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->sErrorNumMap:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Unknow Error!"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->sErrorNumMap:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Wrong Parameters!"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->sErrorNumMap:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Wrong Values!"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->sErrorNumMap:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Internal Failure!"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->sErrorNumMap:Ljava/util/HashMap;

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Bad schema!"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->sErrorNumMap:Ljava/util/HashMap;

    const/16 v2, 0x66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "XML XPath error!"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->sErrorNumMap:Ljava/util/HashMap;

    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Wrong options!"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->sErrorNumMap:Ljava/util/HashMap;

    const/16 v2, 0x68

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Array Index errror!"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->sErrorNumMap:Ljava/util/HashMap;

    const/16 v2, 0x6b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Serialize error!"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->sErrorNumMap:Ljava/util/HashMap;

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "XML format error!"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->sErrorNumMap:Ljava/util/HashMap;

    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "RDF format error!"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->sErrorNumMap:Ljava/util/HashMap;

    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "XMO format error!"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->sErrorNumMap:Ljava/util/HashMap;

    const/16 v2, 0xcc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Stream format error!"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    const-string v1, "XMPUtilImpl"

    const-string v2, "xmp_jni library not found!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized decodeBase64(Ljava/lang/String;)[B
    .locals 3
    .parameter "base64String"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-class v1, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    const/4 v2, -0x1

    sput v2, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->exceptionNum:I

    invoke-static {p0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->decodeBase64Nat(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, result:[B
    sget v2, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->exceptionNum:I

    invoke-static {v2}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .end local v0           #result:[B
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private static native decodeBase64Nat(Ljava/lang/String;)[B
.end method

.method public static declared-synchronized encodeBase64([B)Ljava/lang/String;
    .locals 3
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-class v1, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    const/4 v2, -0x1

    sput v2, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->exceptionNum:I

    invoke-static {p0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->encodeBase64Nat([B)Ljava/lang/String;

    move-result-object v0

    .local v0, result:Ljava/lang/String;
    sget v2, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->exceptionNum:I

    invoke-static {v2}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->processException(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .end local v0           #result:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private static native encodeBase64Nat([B)Ljava/lang/String;
.end method

.method public static processException(I)V
    .locals 3
    .parameter "exceptionNum"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    if-ltz p0, :cond_1

    const-string v0, "XMPUtilImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception happend in native layer, exceptionNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->sErrorNumMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    new-instance v1, Lcom/motorola/android/xmp/XMPException;

    sget-object v0, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->sErrorNumMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0, p0}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    :cond_1
    return-void
.end method

.method static verifySetOptions(Lcom/motorola/android/xmp/options/PropertyOptions;Ljava/lang/Object;)Lcom/motorola/android/xmp/options/PropertyOptions;
    .locals 3
    .parameter "options"
    .parameter "itemValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    if-nez p0, :cond_0

    new-instance p0, Lcom/motorola/android/xmp/options/PropertyOptions;

    .end local p0
    invoke-direct {p0}, Lcom/motorola/android/xmp/options/PropertyOptions;-><init>()V

    .restart local p0
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/motorola/android/xmp/options/PropertyOptions;->setArrayAlternate(Z)Lcom/motorola/android/xmp/options/PropertyOptions;

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/motorola/android/xmp/options/PropertyOptions;->setArrayOrdered(Z)Lcom/motorola/android/xmp/options/PropertyOptions;

    :cond_2
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/PropertyOptions;->isArrayOrdered()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/motorola/android/xmp/options/PropertyOptions;->setArray(Z)Lcom/motorola/android/xmp/options/PropertyOptions;

    :cond_3
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Lcom/motorola/android/xmp/XMPException;

    const-string v1, "Structs and arrays can\'t have values"

    const/16 v2, 0x67

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lcom/motorola/android/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/xmp/options/PropertyOptions;->assertConsistency(I)V

    return-object p0
.end method
