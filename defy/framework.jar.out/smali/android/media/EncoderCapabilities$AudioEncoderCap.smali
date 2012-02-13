.class public Landroid/media/EncoderCapabilities$AudioEncoderCap;
.super Ljava/lang/Object;
.source "EncoderCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/EncoderCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioEncoderCap"
.end annotation


# instance fields
.field public final mCodec:I

.field public final mMaxBitRate:I

.field public final mMaxChannels:I

.field public final mMaxSampleRate:I

.field public final mMinBitRate:I

.field public final mMinChannels:I

.field public final mMinSampleRate:I


# direct methods
.method private constructor <init>(IIIIIII)V
    .locals 0
    .parameter "codec"
    .parameter "minBitRate"
    .parameter "maxBitRate"
    .parameter "minSampleRate"
    .parameter "maxSampleRate"
    .parameter "minChannels"
    .parameter "maxChannels"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/EncoderCapabilities$AudioEncoderCap;->mCodec:I

    iput p2, p0, Landroid/media/EncoderCapabilities$AudioEncoderCap;->mMinBitRate:I

    iput p3, p0, Landroid/media/EncoderCapabilities$AudioEncoderCap;->mMaxBitRate:I

    iput p4, p0, Landroid/media/EncoderCapabilities$AudioEncoderCap;->mMinSampleRate:I

    iput p5, p0, Landroid/media/EncoderCapabilities$AudioEncoderCap;->mMaxSampleRate:I

    iput p6, p0, Landroid/media/EncoderCapabilities$AudioEncoderCap;->mMinChannels:I

    iput p7, p0, Landroid/media/EncoderCapabilities$AudioEncoderCap;->mMaxChannels:I

    return-void
.end method
