.class public Landroid/media/audiofx/EnvironmentalReverb;
.super Landroid/media/audiofx/AudioEffect;
.source "EnvironmentalReverb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/EnvironmentalReverb$1;,
        Landroid/media/audiofx/EnvironmentalReverb$Settings;,
        Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;,
        Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_DECAY_HF_RATIO:I = 0x3

.field public static final PARAM_DECAY_TIME:I = 0x2

.field public static final PARAM_DENSITY:I = 0x9

.field public static final PARAM_DIFFUSION:I = 0x8

.field private static final PARAM_PROPERTIES:I = 0xa

.field public static final PARAM_REFLECTIONS_DELAY:I = 0x5

.field public static final PARAM_REFLECTIONS_LEVEL:I = 0x4

.field public static final PARAM_REVERB_DELAY:I = 0x7

.field public static final PARAM_REVERB_LEVEL:I = 0x6

.field public static final PARAM_ROOM_HF_LEVEL:I = 0x1

.field public static final PARAM_ROOM_LEVEL:I = 0x0

.field private static PROPERTY_SIZE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EnvironmentalReverb"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

.field private mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x1a

    sput v0, Landroid/media/audiofx/EnvironmentalReverb;->PROPERTY_SIZE:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .parameter "priority"
    .parameter "audioSession"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    sget-object v0, Landroid/media/audiofx/EnvironmentalReverb;->EFFECT_TYPE_ENV_REVERB:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/EnvironmentalReverb;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    iput-object v2, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    iput-object v2, p0, Landroid/media/audiofx/EnvironmentalReverb;->mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Landroid/media/audiofx/EnvironmentalReverb;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/EnvironmentalReverb;)Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getDecayHFRatio()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [B

    .local v0, param:[B
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-virtual {p0, v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public getDecayTime()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    new-array v0, v1, [B

    .local v0, param:[B
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-virtual {p0, v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([B)I

    move-result v1

    return v1
.end method

.method public getDensity()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [B

    .local v0, param:[B
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-virtual {p0, v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public getDiffusion()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [B

    .local v0, param:[B
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-virtual {p0, v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public getProperties()Landroid/media/audiofx/EnvironmentalReverb$Settings;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xa

    sget v2, Landroid/media/audiofx/EnvironmentalReverb;->PROPERTY_SIZE:I

    new-array v0, v2, [B

    .local v0, param:[B
    invoke-virtual {p0, v3, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    new-instance v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;

    invoke-direct {v1}, Landroid/media/audiofx/EnvironmentalReverb$Settings;-><init>()V

    .local v1, settings:Landroid/media/audiofx/EnvironmentalReverb$Settings;
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v2

    iput-short v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomLevel:S

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v2

    iput-short v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomHFLevel:S

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    move-result v2

    iput v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayTime:I

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v2

    iput-short v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayHFRatio:S

    invoke-virtual {p0, v0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v2

    iput-short v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsLevel:S

    const/16 v2, 0xc

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    move-result v2

    iput v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsDelay:I

    const/16 v2, 0x10

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v2

    iput-short v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbLevel:S

    const/16 v2, 0x12

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([BI)I

    move-result v2

    iput v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbDelay:I

    const/16 v2, 0x16

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v2

    iput-short v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->diffusion:S

    const/16 v2, 0x18

    invoke-virtual {p0, v0, v2}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([BI)S

    move-result v2

    iput-short v2, v1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->density:S

    return-object v1
.end method

.method public getReflectionsDelay()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    new-array v0, v1, [B

    .local v0, param:[B
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-virtual {p0, v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([B)I

    move-result v1

    return v1
.end method

.method public getReflectionsLevel()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [B

    .local v0, param:[B
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-virtual {p0, v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public getReverbDelay()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x4

    new-array v0, v1, [B

    .local v0, param:[B
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-virtual {p0, v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToInt([B)I

    move-result v1

    return v1
.end method

.method public getReverbLevel()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [B

    .local v0, param:[B
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-virtual {p0, v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public getRoomHFLevel()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [B

    .local v0, param:[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-virtual {p0, v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public getRoomLevel()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [B

    .local v0, param:[B
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->getParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    invoke-virtual {p0, v0}, Landroid/media/audiofx/EnvironmentalReverb;->byteArrayToShort([B)S

    move-result v1

    return v1
.end method

.method public setDecayHFRatio(S)V
    .locals 2
    .parameter "decayHFRatio"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    .local v0, param:[B
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public setDecayTime(I)V
    .locals 2
    .parameter "decayTime"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v0

    .local v0, param:[B
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public setDensity(S)V
    .locals 2
    .parameter "density"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    .local v0, param:[B
    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public setDiffusion(S)V
    .locals 2
    .parameter "diffusion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    .local v0, param:[B
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    if-nez v1, :cond_0

    iput-object p1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mParamListener:Landroid/media/audiofx/EnvironmentalReverb$OnParameterChangeListener;

    new-instance v1, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;-><init>(Landroid/media/audiofx/EnvironmentalReverb;Landroid/media/audiofx/EnvironmentalReverb$1;)V

    iput-object v1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    iget-object v1, p0, Landroid/media/audiofx/EnvironmentalReverb;->mBaseParamListener:Landroid/media/audiofx/EnvironmentalReverb$BaseParameterListener;

    invoke-super {p0, v1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setProperties(Landroid/media/audiofx/EnvironmentalReverb$Settings;)V
    .locals 5
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    new-array v1, v4, [[B

    const/4 v2, 0x0

    iget-short v3, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomLevel:S

    invoke-virtual {p0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-short v3, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->roomHFLevel:S

    invoke-virtual {p0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayTime:I

    invoke-virtual {p0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-short v3, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->decayHFRatio:S

    invoke-virtual {p0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-short v3, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsLevel:S

    invoke-virtual {p0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reflectionsDelay:I

    invoke-virtual {p0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget-short v3, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbLevel:S

    invoke-virtual {p0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->reverbDelay:I

    invoke-virtual {p0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    iget-short v3, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->diffusion:S

    invoke-virtual {p0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    iget-short v3, p1, Landroid/media/audiofx/EnvironmentalReverb$Settings;->density:S

    invoke-virtual {p0, v3}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->concatArrays([[B)[B

    move-result-object v0

    .local v0, param:[B
    invoke-virtual {p0, v4, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public setReflectionsDelay(I)V
    .locals 2
    .parameter "reflectionsDelay"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v0

    .local v0, param:[B
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public setReflectionsLevel(S)V
    .locals 2
    .parameter "reflectionsLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    .local v0, param:[B
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public setReverbDelay(I)V
    .locals 2
    .parameter "reverbDelay"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/audiofx/EnvironmentalReverb;->intToByteArray(I)[B

    move-result-object v0

    .local v0, param:[B
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public setReverbLevel(S)V
    .locals 2
    .parameter "reverbLevel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    .local v0, param:[B
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public setRoomHFLevel(S)V
    .locals 2
    .parameter "roomHF"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    .local v0, param:[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method

.method public setRoomLevel(S)V
    .locals 2
    .parameter "room"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1}, Landroid/media/audiofx/EnvironmentalReverb;->shortToByteArray(S)[B

    move-result-object v0

    .local v0, param:[B
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/EnvironmentalReverb;->setParameter(I[B)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/EnvironmentalReverb;->checkStatus(I)V

    return-void
.end method
