.class public final Lcom/motorola/android/xmp/XMPFileFactory;
.super Ljava/lang/Object;
.source "XMPFileFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XMPFileFactory"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFileFormat(Ljava/lang/String;)I
    .locals 4
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    const-string v1, "XMPFileFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter checkFileFormat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/android/xmp/impl/XMPFileImpl;

    invoke-direct {v0}, Lcom/motorola/android/xmp/impl/XMPFileImpl;-><init>()V

    .local v0, xmpFile:Lcom/motorola/android/xmp/impl/XMPFileImpl;
    invoke-virtual {v0, p0}, Lcom/motorola/android/xmp/impl/XMPFileImpl;->checkFileFormat(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static create()Lcom/motorola/android/xmp/XMPFile;
    .locals 1

    .prologue
    new-instance v0, Lcom/motorola/android/xmp/impl/XMPFileImpl;

    invoke-direct {v0}, Lcom/motorola/android/xmp/impl/XMPFileImpl;-><init>()V

    return-object v0
.end method
