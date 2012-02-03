.class abstract Lcom/broadcom/bt/util/bmsg/BMessageBase;
.super Ljava/lang/Object;
.source "BMessageBase.java"


# instance fields
.field protected mNativeObjectRef:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clearNativeRef()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    .line 46
    return-void
.end method

.method protected isNativeCreated()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setNativeRef(I)Z
    .locals 1
    .parameter "nativeObjectRef"

    .prologue
    .line 49
    if-lez p1, :cond_0

    .line 50
    iput p1, p0, Lcom/broadcom/bt/util/bmsg/BMessageBase;->mNativeObjectRef:I

    .line 51
    const/4 v0, 0x1

    .line 53
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
