.class public Lcom/google/android/mms/InvalidHeaderValueException;
.super Lcom/google/android/mms/MmsException;
.source "InvalidHeaderValueException.java"


# static fields
.field private static final serialVersionUID:J = -0x1c7f1651e1e18aa6L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/google/android/mms/MmsException;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method
