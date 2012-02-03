.class public final Lcom/google/android/mms/util/PduCacheEntry;
.super Ljava/lang/Object;
.source "PduCacheEntry.java"


# instance fields
.field private final mMessageBox:I

.field private final mPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field private final mThreadId:J


# direct methods
.method public constructor <init>(Lcom/google/android/mms/pdu/GenericPdu;IJ)V
    .locals 0
    .parameter "pdu"
    .parameter "msgBox"
    .parameter "threadId"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/google/android/mms/util/PduCacheEntry;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    .line 29
    iput p2, p0, Lcom/google/android/mms/util/PduCacheEntry;->mMessageBox:I

    .line 30
    iput-wide p3, p0, Lcom/google/android/mms/util/PduCacheEntry;->mThreadId:J

    .line 31
    return-void
.end method


# virtual methods
.method public getMessageBox()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mMessageBox:I

    return v0
.end method

.method public getPdu()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mThreadId:J

    return-wide v0
.end method
