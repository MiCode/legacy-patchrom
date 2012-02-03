.class public Lcom/immersion/EffectHandle;
.super Ljava/lang/Object;
.source "EffectHandle.java"


# instance fields
.field protected hDeviceHandle:I

.field protected hEffectHandle:I


# direct methods
.method protected constructor <init>(II)V
    .locals 0
    .parameter "hDeviceHandle"
    .parameter "hEffectHandle"

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    .line 31
    iput p2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    .line 32
    return-void
.end method


# virtual methods
.method public destroyStreamingEffect()V
    .locals 3

    .prologue
    .line 415
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->destroyStreamingEffect(II)V

    .line 416
    return-void
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 146
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->getEffectState(II)I

    move-result v0

    return v0
.end method

.method public isPaused()Z
    .locals 2

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/immersion/EffectHandle;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 170
    invoke-virtual {p0}, Lcom/immersion/EffectHandle;->getState()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public modifyPlayingMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)V
    .locals 10
    .parameter "definition"

    .prologue
    .line 66
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getDuration()I

    move-result v3

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getMagnitude()I

    move-result v4

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getStyle()I

    move-result v5

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackTime()I

    move-result v6

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackLevel()I

    move-result v7

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeTime()I

    move-result v8

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeLevel()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/immersion/ImmVibe;->modifyPlayingMagSweepEffect(IIIIIIIII)V

    .line 75
    return-void
.end method

.method public modifyPlayingPeriodicEffect(Lcom/immersion/PeriodicEffectDefinition;)V
    .locals 11
    .parameter "definition"

    .prologue
    .line 109
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getDuration()I

    move-result v3

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getMagnitude()I

    move-result v4

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getPeriod()I

    move-result v5

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getStyleAndWaveType()I

    move-result v6

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getAttackTime()I

    move-result v7

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getAttackLevel()I

    move-result v8

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getFadeTime()I

    move-result v9

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getFadeLevel()I

    move-result v10

    invoke-virtual/range {v0 .. v10}, Lcom/immersion/ImmVibe;->modifyPlayingPeriodicEffect(IIIIIIIIII)V

    .line 119
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 224
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->pausePlayingEffect(II)V

    .line 225
    return-void
.end method

.method public playStreamingSample([BI)V
    .locals 3
    .parameter "pStreamingSample"
    .parameter "nSize"

    .prologue
    .line 333
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/immersion/ImmVibe;->playStreamingSample(II[BI)V

    .line 334
    return-void
.end method

.method public playStreamingSampleWithOffset([BII)V
    .locals 6
    .parameter "pStreamingSample"
    .parameter "nSize"
    .parameter "nOffsetTime"

    .prologue
    .line 384
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/immersion/ImmVibe;->playStreamingSampleWithOffset(II[BII)V

    .line 385
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 258
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->resumePausedEffect(II)V

    .line 259
    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    .line 288
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/EffectHandle;->hDeviceHandle:I

    iget v2, p0, Lcom/immersion/EffectHandle;->hEffectHandle:I

    invoke-virtual {v0, v1, v2}, Lcom/immersion/ImmVibe;->stopPlayingEffect(II)V

    .line 289
    return-void
.end method
