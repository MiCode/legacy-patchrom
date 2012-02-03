.class public Lcom/immersion/IVTMagSweepElement;
.super Lcom/immersion/IVTElement;
.source "IVTMagSweepElement.java"


# instance fields
.field private definition:Lcom/immersion/MagSweepEffectDefinition;


# direct methods
.method public constructor <init>(ILcom/immersion/MagSweepEffectDefinition;)V
    .locals 1
    .parameter "time"
    .parameter "definition"

    .prologue
    .line 33
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/immersion/IVTElement;-><init>(II)V

    .line 34
    iput-object p2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    .line 35
    return-void
.end method


# virtual methods
.method public getBuffer()[I
    .locals 3

    .prologue
    .line 62
    const/16 v1, 0xa

    new-array v0, v1, [I

    .line 64
    .local v0, retVal:[I
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/immersion/IVTMagSweepElement;->getType()I

    move-result v2

    aput v2, v0, v1

    .line 65
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/immersion/IVTMagSweepElement;->getTime()I

    move-result v2

    aput v2, v0, v1

    .line 66
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/MagSweepEffectDefinition;->getDuration()I

    move-result v2

    aput v2, v0, v1

    .line 67
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/MagSweepEffectDefinition;->getMagnitude()I

    move-result v2

    aput v2, v0, v1

    .line 68
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/MagSweepEffectDefinition;->getStyle()I

    move-result v2

    aput v2, v0, v1

    .line 69
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/MagSweepEffectDefinition;->getAttackTime()I

    move-result v2

    aput v2, v0, v1

    .line 70
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/MagSweepEffectDefinition;->getAttackLevel()I

    move-result v2

    aput v2, v0, v1

    .line 71
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/MagSweepEffectDefinition;->getFadeTime()I

    move-result v2

    aput v2, v0, v1

    .line 72
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/MagSweepEffectDefinition;->getFadeLevel()I

    move-result v2

    aput v2, v0, v1

    .line 73
    const/16 v1, 0x9

    iget-object v2, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    invoke-virtual {v2}, Lcom/immersion/MagSweepEffectDefinition;->getActuatorIndex()I

    move-result v2

    aput v2, v0, v1

    .line 75
    return-object v0
.end method

.method public getDefinition()Lcom/immersion/MagSweepEffectDefinition;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    return-object v0
.end method

.method public setDefinition(Lcom/immersion/MagSweepEffectDefinition;)V
    .locals 0
    .parameter "definition"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/immersion/IVTMagSweepElement;->definition:Lcom/immersion/MagSweepEffectDefinition;

    .line 45
    return-void
.end method
