.class public Lcom/google/android/mms/pdu/AcknowledgeInd;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "AcknowledgeInd.java"


# direct methods
.method public constructor <init>(I[B)V
    .locals 1
    .parameter "mmsVersion"
    .parameter "transactionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    .line 38
    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setMessageType(I)V

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setMmsVersion(I)V

    .line 40
    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setTransactionId([B)V

    .line 41
    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .parameter "headers"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 50
    return-void
.end method


# virtual methods
.method public getReportAllowed()I
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setReportAllowed(I)V
    .locals 2
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    .line 69
    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .parameter "value"

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/mms/pdu/GenericPdu;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    .line 88
    return-void
.end method
