.class public Lcom/immersion/IVTPeriodicElement;
.super Lcom/immersion/IVTElement;
.source "IVTPeriodicElement.java"


# instance fields
.field private definition:Lcom/immersion/PeriodicEffectDefinition;


# direct methods
.method public constructor <init>(ILcom/immersion/PeriodicEffectDefinition;)V
    .locals 1
    .parameter "time"
    .parameter "definition"

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/immersion/IVTElement;-><init>(II)V

    .line 34
    iput-object p2, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    .line 35
    return-void
.end method


# virtual methods
.method public getBuffer()[I
    .locals 3

    .prologue
    .line 62
    const/16 v1, 0xb

    new-array v0, v1, [I

    .line 64
    .local v0, retVal:[I
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/immersion/IVTPeriodicElement;->getType()I

    move-result v2

    aput v2, v0, v1

    .line 65
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/immersion/IVTPeriodicElement;->getTime()I

    move-result v2

    aput v2, v0, v1

    .line 66
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/PeriodicEffectDefinition;->getDuration()I

    move-result v2

    aput v2, v0, v1

    .line 67
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/PeriodicEffectDefinition;->getPeriod()I

    move-result v2

    aput v2, v0, v1

    .line 68
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/PeriodicEffectDefinition;->getMagnitude()I

    move-result v2

    aput v2, v0, v1

    .line 69
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/PeriodicEffectDefinition;->getStyleAndWaveType()I

    move-result v2

    aput v2, v0, v1

    .line 70
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/PeriodicEffectDefinition;->getAttackTime()I

    move-result v2

    aput v2, v0, v1

    .line 71
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/PeriodicEffectDefinition;->getAttackLevel()I

    move-result v2

    aput v2, v0, v1

    .line 72
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/PeriodicEffectDefinition;->getFadeTime()I

    move-result v2

    aput v2, v0, v1

    .line 73
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/PeriodicEffectDefinition;->getFadeLevel()I

    move-result v2

    aput v2, v0, v1

    .line 74
    const/16 v1, 0xa

    iget-object v2, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/PeriodicEffectDefinition;->getActuatorIndex()I

    move-result v2

    aput v2, v0, v1

    .line 76
    return-object v0
.end method

.method public getDefinition()Lcom/immersion/PeriodicEffectDefinition;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    return-object v0
.end method

.method public setDefinition(Lcom/immersion/PeriodicEffectDefinition;)V
    .locals 0
    .parameter "definition"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/immersion/IVTPeriodicElement;->definition:Lcom/immersion/PeriodicEffectDefinition;

    .line 45
    return-void
.end method
