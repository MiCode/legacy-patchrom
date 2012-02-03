.class public Lcom/immersion/PeriodicEffectDefinition;
.super Ljava/lang/Object;
.source "PeriodicEffectDefinition.java"


# instance fields
.field private nActuatorIndex:I

.field private nAttackLevel:I

.field private nAttackTime:I

.field private nDuration:I

.field private nFadeLevel:I

.field private nFadeTime:I

.field private nMagnitude:I

.field private nPeriod:I

.field private nStyleAndWaveType:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .locals 0
    .parameter "nDuration"
    .parameter "nMagnitude"
    .parameter "nPeriod"
    .parameter "nStyleAndWaveType"
    .parameter "nAttackTime"
    .parameter "nAttackLevel"
    .parameter "nFadeTime"
    .parameter "nFadeLevel"
    .parameter "nActuatorIndex"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-virtual {p0, p1}, Lcom/immersion/PeriodicEffectDefinition;->setDuration(I)V

    .line 130
    invoke-virtual {p0, p2}, Lcom/immersion/PeriodicEffectDefinition;->setMagnitude(I)V

    .line 131
    invoke-virtual {p0, p3}, Lcom/immersion/PeriodicEffectDefinition;->setPeriod(I)V

    .line 132
    invoke-virtual {p0, p4}, Lcom/immersion/PeriodicEffectDefinition;->setStyleAndWaveType(I)V

    .line 133
    invoke-virtual {p0, p5}, Lcom/immersion/PeriodicEffectDefinition;->setAttackTime(I)V

    .line 134
    invoke-virtual {p0, p6}, Lcom/immersion/PeriodicEffectDefinition;->setAttackLevel(I)V

    .line 135
    invoke-virtual {p0, p7}, Lcom/immersion/PeriodicEffectDefinition;->setFadeTime(I)V

    .line 136
    invoke-virtual {p0, p8}, Lcom/immersion/PeriodicEffectDefinition;->setFadeLevel(I)V

    .line 137
    invoke-virtual {p0, p9}, Lcom/immersion/PeriodicEffectDefinition;->setActuatorIndex(I)V

    .line 138
    return-void
.end method


# virtual methods
.method public getActuatorIndex()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nActuatorIndex:I

    return v0
.end method

.method public getAttackLevel()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nAttackLevel:I

    return v0
.end method

.method public getAttackTime()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nAttackTime:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nDuration:I

    return v0
.end method

.method public getFadeLevel()I
    .locals 1

    .prologue
    .line 433
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nFadeLevel:I

    return v0
.end method

.method public getFadeTime()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nFadeTime:I

    return v0
.end method

.method public getMagnitude()I
    .locals 1

    .prologue
    .line 204
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nMagnitude:I

    return v0
.end method

.method public getPeriod()I
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nPeriod:I

    return v0
.end method

.method public getStyleAndWaveType()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/immersion/PeriodicEffectDefinition;->nStyleAndWaveType:I

    return v0
.end method

.method public setActuatorIndex(I)V
    .locals 0
    .parameter "nActuatorIndex"

    .prologue
    .line 448
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nActuatorIndex:I

    .line 449
    return-void
.end method

.method public setAttackLevel(I)V
    .locals 0
    .parameter "nAttackLevel"

    .prologue
    .line 356
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nAttackLevel:I

    .line 357
    return-void
.end method

.method public setAttackTime(I)V
    .locals 0
    .parameter "nAttackTime"

    .prologue
    .line 325
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nAttackTime:I

    .line 326
    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .parameter "nDuration"

    .prologue
    .line 155
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nDuration:I

    .line 156
    return-void
.end method

.method public setFadeLevel(I)V
    .locals 0
    .parameter "nFadeLevel"

    .prologue
    .line 418
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nFadeLevel:I

    .line 419
    return-void
.end method

.method public setFadeTime(I)V
    .locals 0
    .parameter "nFadeTime"

    .prologue
    .line 387
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nFadeTime:I

    .line 388
    return-void
.end method

.method public setMagnitude(I)V
    .locals 0
    .parameter "nMagnitude"

    .prologue
    .line 189
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nMagnitude:I

    .line 190
    return-void
.end method

.method public setPeriod(I)V
    .locals 0
    .parameter "nPeriod"

    .prologue
    .line 232
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nPeriod:I

    .line 233
    return-void
.end method

.method public setStyleAndWaveType(I)V
    .locals 0
    .parameter "nStyleAndWaveType"

    .prologue
    .line 285
    iput p1, p0, Lcom/immersion/PeriodicEffectDefinition;->nStyleAndWaveType:I

    .line 286
    return-void
.end method
