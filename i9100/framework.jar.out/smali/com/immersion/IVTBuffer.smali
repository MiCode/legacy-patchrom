.class public Lcom/immersion/IVTBuffer;
.super Ljava/lang/Object;
.source "IVTBuffer.java"


# instance fields
.field private pIVT:[B


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "nBufferSize"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/immersion/ImmVibe;->initializeIVTBuffer(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    .line 75
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .parameter "pIVT"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    .line 49
    return-void
.end method

.method public static deleteHapticTrack(Ljava/lang/String;)V
    .locals 1
    .parameter "strPathName"

    .prologue
    .line 416
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/immersion/ImmVibe;->deleteIVTFile(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public static getBuiltInEffects()Lcom/immersion/IVTBuffer;
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/immersion/IVTBuffer;

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/immersion/ImmVibe;->getBuiltInEffects()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/immersion/IVTBuffer;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    return-object v0
.end method

.method public getEffectCount()I
    .locals 2

    .prologue
    .line 94
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    invoke-virtual {v0, v1}, Lcom/immersion/ImmVibe;->getIVTEffectCount([B)I

    move-result v0

    return v0
.end method

.method public getEffectDuration(I)I
    .locals 2
    .parameter "nEffectIndex"

    .prologue
    .line 228
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getIVTEffectDuration([BI)I

    move-result v0

    return v0
.end method

.method public getEffectIndexFromName(Ljava/lang/String;)I
    .locals 2
    .parameter "strEffectName"

    .prologue
    .line 153
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getIVTEffectIndexFromName([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getEffectName(I)Ljava/lang/String;
    .locals 2
    .parameter "nEffectIndex"

    .prologue
    .line 130
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getIVTEffectName([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEffectType(I)I
    .locals 2
    .parameter "nEffectIndex"

    .prologue
    .line 193
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getIVTEffectType([BI)I

    move-result v0

    return v0
.end method

.method public getMagSweepEffectDefinitionAtIndex(I)Lcom/immersion/MagSweepEffectDefinition;
    .locals 20
    .parameter "nEffectIndex"

    .prologue
    .line 267
    const/4 v1, 0x1

    new-array v4, v1, [I

    .line 268
    .local v4, pnDuration:[I
    const/4 v1, 0x1

    new-array v5, v1, [I

    .line 269
    .local v5, pnMagnitude:[I
    const/4 v1, 0x1

    new-array v6, v1, [I

    .line 270
    .local v6, pnStyle:[I
    const/4 v1, 0x1

    new-array v7, v1, [I

    .line 271
    .local v7, pnAttackTime:[I
    const/4 v1, 0x1

    new-array v8, v1, [I

    .line 272
    .local v8, pnAttackLevel:[I
    const/4 v1, 0x1

    new-array v9, v1, [I

    .line 273
    .local v9, pnFadeTime:[I
    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 275
    .local v10, pnFadeLevel:[I
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/IVTBuffer;->pIVT:[B

    move-object v2, v0

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v10}, Lcom/immersion/ImmVibe;->getIVTMagSweepEffectDefinition([BI[I[I[I[I[I[I[I)V

    .line 285
    new-instance v11, Lcom/immersion/MagSweepEffectDefinition;

    const/4 v1, 0x0

    aget v12, v4, v1

    const/4 v1, 0x0

    aget v13, v5, v1

    const/4 v1, 0x0

    aget v14, v6, v1

    const/4 v1, 0x0

    aget v15, v7, v1

    const/4 v1, 0x0

    aget v16, v8, v1

    const/4 v1, 0x0

    aget v17, v9, v1

    const/4 v1, 0x0

    aget v18, v10, v1

    const/16 v19, 0x0

    invoke-direct/range {v11 .. v19}, Lcom/immersion/MagSweepEffectDefinition;-><init>(IIIIIIII)V

    return-object v11
.end method

.method public getPeriodicEffectDefinitionAtIndex(I)Lcom/immersion/PeriodicEffectDefinition;
    .locals 22
    .parameter "nEffectIndex"

    .prologue
    .line 331
    const/4 v1, 0x1

    new-array v4, v1, [I

    .line 332
    .local v4, pnDuration:[I
    const/4 v1, 0x1

    new-array v5, v1, [I

    .line 333
    .local v5, pnMagnitude:[I
    const/4 v1, 0x1

    new-array v6, v1, [I

    .line 334
    .local v6, pnPeriod:[I
    const/4 v1, 0x1

    new-array v7, v1, [I

    .line 335
    .local v7, pnStyle:[I
    const/4 v1, 0x1

    new-array v8, v1, [I

    .line 336
    .local v8, pnAttackTime:[I
    const/4 v1, 0x1

    new-array v9, v1, [I

    .line 337
    .local v9, pnAttackLevel:[I
    const/4 v1, 0x1

    new-array v10, v1, [I

    .line 338
    .local v10, pnFadeTime:[I
    const/4 v1, 0x1

    new-array v11, v1, [I

    .line 340
    .local v11, pnFadeLevel:[I
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/immersion/IVTBuffer;->pIVT:[B

    move-object v2, v0

    move/from16 v3, p1

    invoke-virtual/range {v1 .. v11}, Lcom/immersion/ImmVibe;->getIVTPeriodicEffectDefinition([BI[I[I[I[I[I[I[I[I)V

    .line 351
    new-instance v12, Lcom/immersion/PeriodicEffectDefinition;

    const/4 v1, 0x0

    aget v13, v4, v1

    const/4 v1, 0x0

    aget v14, v5, v1

    const/4 v1, 0x0

    aget v15, v6, v1

    const/4 v1, 0x0

    aget v16, v7, v1

    const/4 v1, 0x0

    aget v17, v8, v1

    const/4 v1, 0x0

    aget v18, v9, v1

    const/4 v1, 0x0

    aget v19, v10, v1

    const/4 v1, 0x0

    aget v20, v11, v1

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v21}, Lcom/immersion/PeriodicEffectDefinition;-><init>(IIIIIIIII)V

    return-object v12
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 456
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    invoke-virtual {v0, v1}, Lcom/immersion/ImmVibe;->getIVTSize([B)I

    move-result v0

    return v0
.end method

.method public insertElement(ILcom/immersion/IVTElement;)V
    .locals 4
    .parameter "nTimelineIndex"
    .parameter "pIVTElement"

    .prologue
    .line 512
    invoke-virtual {p2}, Lcom/immersion/IVTElement;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 514
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    invoke-virtual {p2}, Lcom/immersion/IVTElement;->getBuffer()[I

    move-result-object v2

    check-cast p2, Lcom/immersion/IVTWaveformElement;

    .end local p2
    invoke-virtual {p2}, Lcom/immersion/IVTWaveformElement;->getDefinition()Lcom/immersion/WaveformEffectDefinition;

    move-result-object v3

    invoke-virtual {v3}, Lcom/immersion/WaveformEffectDefinition;->getData()[B

    move-result-object v3

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/immersion/ImmVibe;->insertIVTElement([BI[I[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    .line 520
    :goto_0
    return-void

    .line 518
    .restart local p2
    :cond_0
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    invoke-virtual {p2}, Lcom/immersion/IVTElement;->getBuffer()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/immersion/ImmVibe;->insertIVTElement([BI[I[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    goto :goto_0
.end method

.method public readElement(II)Lcom/immersion/IVTElement;
    .locals 5
    .parameter "nTimelineIndex"
    .parameter "nElementIndex"

    .prologue
    .line 632
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v2

    iget-object v3, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    invoke-virtual {v2, v3, p1, p2}, Lcom/immersion/ImmVibe;->readIVTElement([BII)[I

    move-result-object v2

    invoke-static {v2}, Lcom/immersion/IVTElement;->newIVTElement([I)Lcom/immersion/IVTElement;

    move-result-object v1

    .line 634
    .local v1, retVal:Lcom/immersion/IVTElement;
    invoke-virtual {v1}, Lcom/immersion/IVTElement;->getType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 636
    move-object v0, v1

    check-cast v0, Lcom/immersion/IVTWaveformElement;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/immersion/IVTWaveformElement;->getDefinition()Lcom/immersion/WaveformEffectDefinition;

    move-result-object v2

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v3

    iget-object v4, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    invoke-virtual {v3, v4, p1, p2}, Lcom/immersion/ImmVibe;->readIVTElementData([BII)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/immersion/WaveformEffectDefinition;->setData([B)V

    .line 639
    :cond_0
    return-object v1
.end method

.method public removeElement(II)V
    .locals 2
    .parameter "nTimelineIndex"
    .parameter "nElementIndex"

    .prologue
    .line 578
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    invoke-virtual {v0, v1, p1, p2}, Lcom/immersion/ImmVibe;->removeIVTElement([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    .line 579
    return-void
.end method

.method public saveHapticTrack(Ljava/lang/String;)V
    .locals 2
    .parameter "strPathName"

    .prologue
    .line 393
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget-object v1, p0, Lcom/immersion/IVTBuffer;->pIVT:[B

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->saveIVTFile([BLjava/lang/String;)V

    .line 394
    return-void
.end method
