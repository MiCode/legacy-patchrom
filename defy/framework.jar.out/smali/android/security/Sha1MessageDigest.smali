.class public Landroid/security/Sha1MessageDigest;
.super Landroid/security/MessageDigest;
.source "Sha1MessageDigest.java"


# instance fields
.field private mNativeSha1Context:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/security/MessageDigest;-><init>()V

    invoke-direct {p0}, Landroid/security/Sha1MessageDigest;->init()V

    return-void
.end method

.method private native init()V
.end method


# virtual methods
.method public native digest()[B
.end method

.method public digest([B)[B
    .locals 1
    .parameter "input"

    .prologue
    invoke-virtual {p0, p1}, Landroid/security/Sha1MessageDigest;->update([B)V

    invoke-virtual {p0}, Landroid/security/Sha1MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public native reset()V
.end method

.method public native update([B)V
.end method
