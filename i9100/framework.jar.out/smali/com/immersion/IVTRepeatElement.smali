.class public Lcom/immersion/IVTRepeatElement;
.super Lcom/immersion/IVTElement;
.source "IVTRepeatElement.java"


# instance fields
.field private duration:I

.field private repeatCount:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter "time"
    .parameter "repeatCount"
    .parameter "duration"

    .prologue
    .line 39
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/immersion/IVTElement;-><init>(II)V

    .line 40
    iput p2, p0, Lcom/immersion/IVTRepeatElement;->repeatCount:I

    .line 41
    iput p3, p0, Lcom/immersion/IVTRepeatElement;->duration:I

    .line 42
    return-void
.end method


# virtual methods
.method public getBuffer()[I
    .locals 3

    .prologue
    .line 97
    const/4 v1, 0x4

    new-array v0, v1, [I

    .line 99
    .local v0, retVal:[I
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/immersion/IVTRepeatElement;->getType()I

    move-result v2

    aput v2, v0, v1

    .line 100
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/immersion/IVTRepeatElement;->getTime()I

    move-result v2

    aput v2, v0, v1

    .line 101
    const/4 v1, 0x2

    iget v2, p0, Lcom/immersion/IVTRepeatElement;->repeatCount:I

    aput v2, v0, v1

    .line 102
    const/4 v1, 0x3

    iget v2, p0, Lcom/immersion/IVTRepeatElement;->duration:I

    aput v2, v0, v1

    .line 104
    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 89
    iget v0, p0, Lcom/immersion/IVTRepeatElement;->duration:I

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/immersion/IVTRepeatElement;->repeatCount:I

    return v0
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 78
    iput p1, p0, Lcom/immersion/IVTRepeatElement;->duration:I

    .line 79
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0
    .parameter "repeatCount"

    .prologue
    .line 54
    iput p1, p0, Lcom/immersion/IVTRepeatElement;->repeatCount:I

    .line 55
    return-void
.end method
