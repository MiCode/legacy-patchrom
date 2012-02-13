.class public Lcom/motorola/android/ims/IllegalStateException;
.super Lcom/motorola/android/ims/IMSException;
.source "IllegalStateException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/motorola/android/ims/IMSException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/ims/IMSException;-><init>(Ljava/lang/String;)V

    return-void
.end method
