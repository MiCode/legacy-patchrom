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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/mms/util/PduCacheEntry;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    iput p2, p0, Lcom/google/android/mms/util/PduCacheEntry;->mMessageBox:I

    iput-wide p3, p0, Lcom/google/android/mms/util/PduCacheEntry;->mThreadId:J

    return-void
.end method


# virtual methods
.method public getMessageBox()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mMessageBox:I

    return v0
.end method

.method public getPdu()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mPdu:Lcom/google/android/mms/pdu/GenericPdu;

    return-object v0
.end method

.method public getThreadId()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/google/android/mms/util/PduCacheEntry;->mThreadId:J

    return-wide v0
.end method
