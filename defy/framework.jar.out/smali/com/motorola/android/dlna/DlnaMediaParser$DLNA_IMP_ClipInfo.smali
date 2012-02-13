.class public Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;
.super Ljava/lang/Object;
.source "DlnaMediaParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/dlna/DlnaMediaParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DLNA_IMP_ClipInfo"
.end annotation


# instance fields
.field nAudioBitrate:I

.field nBitsPerSample:I

.field nDRMProtected:I

.field nFileBitrate:I

.field nFileCreateTime:I

.field nFileDuration:I

.field nFileSize:I

.field nFrameHeight:I

.field nFrameRate:I

.field nFrameWidth:I

.field nMaxBlockSize:I

.field nMaxChannels:I

.field nMaxSampleRate:I

.field nNumOfAudioStreams:I

.field nNumOfVideoStreams:I

.field nVideoBitrate:I

.field szFileType:Ljava/lang/String;

.field final synthetic this$0:Lcom/motorola/android/dlna/DlnaMediaParser;


# direct methods
.method public constructor <init>(Lcom/motorola/android/dlna/DlnaMediaParser;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/dlna/DlnaMediaParser$DLNA_IMP_ClipInfo;->this$0:Lcom/motorola/android/dlna/DlnaMediaParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
