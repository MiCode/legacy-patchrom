.class public Lcom/motorola/android/xmp/XMPPacketInfo;
.super Ljava/lang/Object;
.source "XMPPacketInfo.java"


# instance fields
.field private mCharForm:I

.field private mHasWrapper:Z

.field private mIsWritable:Z

.field private mLength:I

.field private mOffset:I

.field private mPadSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCharForm()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/xmp/XMPPacketInfo;->mCharForm:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/xmp/XMPPacketInfo;->mLength:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/xmp/XMPPacketInfo;->mOffset:I

    return v0
.end method

.method public getPadSize()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/xmp/XMPPacketInfo;->mPadSize:I

    return v0
.end method

.method public hasWrapper()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/xmp/XMPPacketInfo;->mHasWrapper:Z

    return v0
.end method

.method public isWriteable()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/xmp/XMPPacketInfo;->mIsWritable:Z

    return v0
.end method
