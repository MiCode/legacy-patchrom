.class public Lcom/immersion/WaveformEffectDefinition;
.super Ljava/lang/Object;
.source "WaveformEffectDefinition.java"


# instance fields
.field private nActuatorIndex:I

.field private nBitDepth:I

.field private nDataSize:I

.field private nMagnitude:I

.field private nSampleRate:I

.field private pData:[B


# direct methods
.method public constructor <init>([BIIIII)V
    .locals 0
    .parameter "pData"
    .parameter "nDataSize"
    .parameter "nSampleRate"
    .parameter "nBitDepth"
    .parameter "nMagnitude"
    .parameter "nActuatorIndex"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0, p1}, Lcom/immersion/WaveformEffectDefinition;->setData([B)V

    .line 73
    invoke-virtual {p0, p2}, Lcom/immersion/WaveformEffectDefinition;->setDataSize(I)V

    .line 74
    invoke-virtual {p0, p3}, Lcom/immersion/WaveformEffectDefinition;->setSampleRate(I)V

    .line 75
    invoke-virtual {p0, p4}, Lcom/immersion/WaveformEffectDefinition;->setBitDepth(I)V

    .line 76
    invoke-virtual {p0, p5}, Lcom/immersion/WaveformEffectDefinition;->setMagnitude(I)V

    .line 77
    invoke-virtual {p0, p6}, Lcom/immersion/WaveformEffectDefinition;->setActuatorIndex(I)V

    .line 78
    return-void
.end method


# virtual methods
.method public getActuatorIndex()I
    .locals 1

    .prologue
    .line 249
    iget v0, p0, Lcom/immersion/WaveformEffectDefinition;->nActuatorIndex:I

    return v0
.end method

.method public getBitDepth()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/immersion/WaveformEffectDefinition;->nBitDepth:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/immersion/WaveformEffectDefinition;->pData:[B

    return-object v0
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lcom/immersion/WaveformEffectDefinition;->nDataSize:I

    return v0
.end method

.method public getMagnitude()I
    .locals 1

    .prologue
    .line 219
    iget v0, p0, Lcom/immersion/WaveformEffectDefinition;->nMagnitude:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/immersion/WaveformEffectDefinition;->nSampleRate:I

    return v0
.end method

.method public setActuatorIndex(I)V
    .locals 0
    .parameter "nActuatorIndex"

    .prologue
    .line 234
    iput p1, p0, Lcom/immersion/WaveformEffectDefinition;->nActuatorIndex:I

    .line 235
    return-void
.end method

.method public setBitDepth(I)V
    .locals 0
    .parameter "nBitDepth"

    .prologue
    .line 166
    iput p1, p0, Lcom/immersion/WaveformEffectDefinition;->nBitDepth:I

    .line 167
    return-void
.end method

.method public setData([B)V
    .locals 0
    .parameter "pData"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/immersion/WaveformEffectDefinition;->pData:[B

    .line 92
    return-void
.end method

.method public setDataSize(I)V
    .locals 0
    .parameter "nDataSize"

    .prologue
    .line 118
    iput p1, p0, Lcom/immersion/WaveformEffectDefinition;->nDataSize:I

    .line 119
    return-void
.end method

.method public setMagnitude(I)V
    .locals 0
    .parameter "nMagnitude"

    .prologue
    .line 199
    iput p1, p0, Lcom/immersion/WaveformEffectDefinition;->nMagnitude:I

    .line 200
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .parameter "nSampleRate"

    .prologue
    .line 142
    iput p1, p0, Lcom/immersion/WaveformEffectDefinition;->nSampleRate:I

    .line 143
    return-void
.end method
