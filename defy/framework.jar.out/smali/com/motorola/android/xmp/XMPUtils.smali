.class public Lcom/motorola/android/xmp/XMPUtils;
.super Ljava/lang/Object;
.source "XMPUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64(Ljava/lang/String;)[B
    .locals 1
    .parameter "base64String"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    invoke-static {p0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static encodeBase64([B)Ljava/lang/String;
    .locals 1
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    invoke-static {p0}, Lcom/motorola/android/xmp/impl/XMPUtilsJniImpl;->encodeBase64([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
