.class public Lcom/immersion/IVTWaveformElement;
.super Lcom/immersion/IVTElement;
.source "IVTWaveformElement.java"


# instance fields
.field private definition:Lcom/immersion/WaveformEffectDefinition;


# direct methods
.method public constructor <init>(ILcom/immersion/WaveformEffectDefinition;)V
    .locals 1
    .parameter "time"
    .parameter "definition"

    .prologue
    .line 33
    const/4 v0, 0x3

    invoke-direct {p0, v0, p1}, Lcom/immersion/IVTElement;-><init>(II)V

    .line 34
    iput-object p2, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    .line 35
    return-void
.end method


# virtual methods
.method public getBuffer()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    const/16 v1, 0x8

    new-array v0, v1, [I

    .line 64
    .local v0, retVal:[I
    invoke-virtual {p0}, Lcom/immersion/IVTWaveformElement;->getType()I

    move-result v1

    aput v1, v0, v3

    .line 65
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/immersion/IVTWaveformElement;->getTime()I

    move-result v2

    aput v2, v0, v1

    .line 66
    const/4 v1, 0x2

    aput v3, v0, v1

    .line 67
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/WaveformEffectDefinition;->getDataSize()I

    move-result v2

    aput v2, v0, v1

    .line 68
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/WaveformEffectDefinition;->getSampleRate()I

    move-result v2

    aput v2, v0, v1

    .line 69
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/WaveformEffectDefinition;->getBitDepth()I

    move-result v2

    aput v2, v0, v1

    .line 70
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/WaveformEffectDefinition;->getMagnitude()I

    move-result v2

    aput v2, v0, v1

    .line 71
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/WaveformEffectDefinition;->getActuatorIndex()I

    move-result v2

    aput v2, v0, v1

    .line 73
    return-object v0
.end method

.method public getDefinition()Lcom/immersion/WaveformEffectDefinition;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    return-object v0
.end method

.method public setDefinition(Lcom/immersion/WaveformEffectDefinition;)V
    .locals 0
    .parameter "definition"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/immersion/IVTWaveformElement;->definition:Lcom/immersion/WaveformEffectDefinition;

    .line 45
    return-void
.end method
