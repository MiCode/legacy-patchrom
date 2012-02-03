.class public Lcom/immersion/Device;
.super Ljava/lang/Object;
.source "Device.java"


# instance fields
.field protected hDeviceHandle:I

.field protected nDeviceIndex:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 938
    return-void
.end method

.method public static getCapabilityBool(II)Z
    .locals 1
    .parameter "nDeviceIndex"
    .parameter "nDevCapType"

    .prologue
    .line 268
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityBool(II)Z

    move-result v0

    return v0
.end method

.method public static getCapabilityInt32(II)I
    .locals 1
    .parameter "nDeviceIndex"
    .parameter "nDevCapType"

    .prologue
    .line 333
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityInt32(II)I

    move-result v0

    return v0
.end method

.method public static getCapabilityString(II)Ljava/lang/String;
    .locals 1
    .parameter "nDeviceIndex"
    .parameter "nDevCapType"

    .prologue
    .line 394
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCount()I
    .locals 1

    .prologue
    .line 174
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/immersion/ImmVibe;->getDeviceCount()I

    move-result v0

    return v0
.end method

.method public static getState(I)I
    .locals 1
    .parameter "nDeviceIndex"

    .prologue
    .line 207
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/immersion/ImmVibe;->getDeviceState(I)I

    move-result v0

    return v0
.end method

.method public static newDevice()Lcom/immersion/Device;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/immersion/Device;->newDeviceInstance()Lcom/immersion/Device;

    move-result-object v0

    .line 62
    .local v0, device:Lcom/immersion/Device;
    if-eqz v0, :cond_0

    .line 64
    const/4 v1, -0x1

    iput v1, v0, Lcom/immersion/Device;->nDeviceIndex:I

    .line 65
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    invoke-static {}, Lcom/immersion/Device;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/immersion/ImmVibe;->openCompositeDevice(I)I

    move-result v1

    iput v1, v0, Lcom/immersion/Device;->hDeviceHandle:I

    .line 71
    return-object v0

    .line 69
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VIBE_E_FAIL"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static newDevice(I)Lcom/immersion/Device;
    .locals 3
    .parameter "nDeviceIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-static {}, Lcom/immersion/Device;->newDeviceInstance()Lcom/immersion/Device;

    move-result-object v0

    .line 109
    .local v0, device:Lcom/immersion/Device;
    if-eqz v0, :cond_0

    .line 111
    iput p0, v0, Lcom/immersion/Device;->nDeviceIndex:I

    .line 112
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/immersion/ImmVibe;->openDevice(I)I

    move-result v1

    iput v1, v0, Lcom/immersion/Device;->hDeviceHandle:I

    .line 118
    return-object v0

    .line 116
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "VIBE_E_FAIL"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static newDeviceInstance()Lcom/immersion/Device;
    .locals 2

    .prologue
    .line 973
    const/4 v0, 0x0

    .line 975
    .local v0, device:Lcom/immersion/Device;
    const-string v1, "com.immersion.android.Device"

    invoke-static {v1}, Lcom/immersion/Device;->newDeviceInstanceForName(Ljava/lang/String;)Lcom/immersion/Device;

    move-result-object v0

    .line 977
    if-nez v0, :cond_0

    .line 979
    const-string v1, "com.immersion.J2ME.Device"

    invoke-static {v1}, Lcom/immersion/Device;->newDeviceInstanceForName(Ljava/lang/String;)Lcom/immersion/Device;

    move-result-object v0

    .line 981
    if-nez v0, :cond_0

    .line 983
    new-instance v0, Lcom/immersion/Device;

    .end local v0           #device:Lcom/immersion/Device;
    invoke-direct {v0}, Lcom/immersion/Device;-><init>()V

    .line 986
    .restart local v0       #device:Lcom/immersion/Device;
    :cond_0
    return-object v0
.end method

.method private static newDeviceInstanceForName(Ljava/lang/String;)Lcom/immersion/Device;
    .locals 4
    .parameter "deviceClassName"

    .prologue
    .line 953
    const/4 v1, 0x0

    .line 957
    .local v1, device:Lcom/immersion/Device;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 959
    .local v2, t:Ljava/lang/Class;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/immersion/Device;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    .end local v2           #t:Ljava/lang/Class;
    :goto_0
    return-object v1

    .line 961
    :catch_0
    move-exception v3

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 140
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-virtual {v0, v1}, Lcom/immersion/ImmVibe;->closeDevice(I)V

    .line 141
    iput v2, p0, Lcom/immersion/Device;->hDeviceHandle:I

    .line 142
    iput v2, p0, Lcom/immersion/Device;->nDeviceIndex:I

    .line 143
    return-void
.end method

.method public createStreamingEffect()Lcom/immersion/EffectHandle;
    .locals 3

    .prologue
    .line 901
    iget v0, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget v2, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-virtual {v1, v2}, Lcom/immersion/ImmVibe;->createStreamingEffect(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object v0

    return-object v0
.end method

.method public getCapabilityBool(I)Z
    .locals 2
    .parameter "nDevCapType"

    .prologue
    .line 296
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->nDeviceIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityBool(II)Z

    move-result v0

    return v0
.end method

.method public getCapabilityInt32(I)I
    .locals 2
    .parameter "nDevCapType"

    .prologue
    .line 358
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->nDeviceIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityInt32(II)I

    move-result v0

    return v0
.end method

.method public getCapabilityString(I)Ljava/lang/String;
    .locals 2
    .parameter "nDevCapType"

    .prologue
    .line 418
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->nDeviceIndex:I

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getDeviceCapabilityString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyBool(I)Z
    .locals 2
    .parameter "nDevPropType"

    .prologue
    .line 447
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getDevicePropertyBool(II)Z

    move-result v0

    return v0
.end method

.method public getPropertyInt32(I)I
    .locals 2
    .parameter "nDevPropType"

    .prologue
    .line 506
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getDevicePropertyInt32(II)I

    move-result v0

    return v0
.end method

.method public getPropertyString(I)Ljava/lang/String;
    .locals 2
    .parameter "nDevPropType"

    .prologue
    .line 565
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-virtual {v0, v1, p1}, Lcom/immersion/ImmVibe;->getDevicePropertyString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 2

    .prologue
    .line 229
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->nDeviceIndex:I

    invoke-virtual {v0, v1}, Lcom/immersion/ImmVibe;->getDeviceState(I)I

    move-result v0

    return v0
.end method

.method protected newEffectHandle(II)Lcom/immersion/EffectHandle;
    .locals 1
    .parameter "hDeviceHandle"
    .parameter "hEffectHandle"

    .prologue
    .line 945
    new-instance v0, Lcom/immersion/EffectHandle;

    invoke-direct {v0, p1, p2}, Lcom/immersion/EffectHandle;-><init>(II)V

    return-object v0
.end method

.method public playIVTEffect(Lcom/immersion/IVTBuffer;I)Lcom/immersion/EffectHandle;
    .locals 4
    .parameter "ivt"
    .parameter "nEffectIndex"

    .prologue
    .line 645
    iget v0, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget v2, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-virtual {p1}, Lcom/immersion/IVTBuffer;->getBuffer()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/immersion/ImmVibe;->playIVTEffect(I[BI)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object v0

    return-object v0
.end method

.method public playIVTEffectRepeat(Lcom/immersion/IVTBuffer;IB)Lcom/immersion/EffectHandle;
    .locals 4
    .parameter "ivt"
    .parameter "nEffectIndex"
    .parameter "nRepeat"

    .prologue
    .line 721
    iget v0, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v1

    iget v2, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-virtual {p1}, Lcom/immersion/IVTBuffer;->getBuffer()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2, p3}, Lcom/immersion/ImmVibe;->playIVTEffectRepeat(I[BIB)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object v0

    return-object v0
.end method

.method public playMagSweepEffect(Lcom/immersion/MagSweepEffectDefinition;)Lcom/immersion/EffectHandle;
    .locals 10
    .parameter "definition"

    .prologue
    .line 757
    iget v9, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getDuration()I

    move-result v2

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getMagnitude()I

    move-result v3

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getStyle()I

    move-result v4

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackTime()I

    move-result v5

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getAttackLevel()I

    move-result v6

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeTime()I

    move-result v7

    invoke-virtual {p1}, Lcom/immersion/MagSweepEffectDefinition;->getFadeLevel()I

    move-result v8

    invoke-virtual/range {v0 .. v8}, Lcom/immersion/ImmVibe;->playMagSweepEffect(IIIIIIII)I

    move-result v0

    invoke-virtual {p0, v9, v0}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object v0

    return-object v0
.end method

.method public playPeriodicEffect(Lcom/immersion/PeriodicEffectDefinition;)Lcom/immersion/EffectHandle;
    .locals 11
    .parameter "definition"

    .prologue
    .line 800
    iget v10, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getDuration()I

    move-result v2

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getMagnitude()I

    move-result v3

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getPeriod()I

    move-result v4

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getStyleAndWaveType()I

    move-result v5

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getAttackTime()I

    move-result v6

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getAttackLevel()I

    move-result v7

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getFadeTime()I

    move-result v8

    invoke-virtual {p1}, Lcom/immersion/PeriodicEffectDefinition;->getFadeLevel()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/immersion/ImmVibe;->playPeriodicEffect(IIIIIIIII)I

    move-result v0

    invoke-virtual {p0, v10, v0}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object v0

    return-object v0
.end method

.method public playWaveformEffect(Lcom/immersion/WaveformEffectDefinition;)Lcom/immersion/EffectHandle;
    .locals 8
    .parameter "definition"

    .prologue
    .line 861
    iget v7, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getData()[B

    move-result-object v2

    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getDataSize()I

    move-result v3

    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getSampleRate()I

    move-result v4

    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getBitDepth()I

    move-result v5

    invoke-virtual {p1}, Lcom/immersion/WaveformEffectDefinition;->getMagnitude()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/immersion/ImmVibe;->playWaveformEffect(I[BIIII)I

    move-result v0

    invoke-virtual {p0, v7, v0}, Lcom/immersion/Device;->newEffectHandle(II)Lcom/immersion/EffectHandle;

    move-result-object v0

    return-object v0
.end method

.method public setPropertyBool(IZ)V
    .locals 2
    .parameter "nDevPropType"
    .parameter "bDevPropValue"

    .prologue
    .line 475
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/immersion/ImmVibe;->setDevicePropertyBool(IIZ)V

    .line 476
    return-void
.end method

.method public setPropertyInt32(II)V
    .locals 2
    .parameter "nDevPropType"
    .parameter "nDevPropValue"

    .prologue
    .line 536
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/immersion/ImmVibe;->setDevicePropertyInt32(III)V

    .line 537
    return-void
.end method

.method public setPropertyString(ILjava/lang/String;)V
    .locals 2
    .parameter "nDevPropType"
    .parameter "strDevPropValue"

    .prologue
    .line 593
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/immersion/ImmVibe;->setDevicePropertyString(IILjava/lang/String;)V

    .line 594
    return-void
.end method

.method public stopAllPlayingEffects()V
    .locals 2

    .prologue
    .line 930
    invoke-static {}, Lcom/immersion/ImmVibe;->getInstance()Lcom/immersion/ImmVibe;

    move-result-object v0

    iget v1, p0, Lcom/immersion/Device;->hDeviceHandle:I

    invoke-virtual {v0, v1}, Lcom/immersion/ImmVibe;->stopAllPlayingEffects(I)V

    .line 931
    return-void
.end method
