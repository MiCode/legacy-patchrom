.class public Landroid/media/audiofx/Equalizer;
.super Landroid/media/audiofx/AudioEffect;
.source "Equalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Equalizer$1;,
        Landroid/media/audiofx/Equalizer$Settings;,
        Landroid/media/audiofx/Equalizer$BaseParameterListener;,
        Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    }
.end annotation


# static fields
.field public static final PARAM_BAND_FREQ_RANGE:I = 0x4

.field public static final PARAM_BAND_LEVEL:I = 0x2

.field public static final PARAM_CENTER_FREQ:I = 0x3

.field public static final PARAM_CURRENT_PRESET:I = 0x6

.field public static final PARAM_GET_BAND:I = 0x5

.field public static final PARAM_GET_NUM_OF_PRESETS:I = 0x7

.field public static final PARAM_GET_PRESET_NAME:I = 0x8

.field public static final PARAM_LEVEL_RANGE:I = 0x1

.field public static final PARAM_NUM_BANDS:I = 0x0

.field private static final PARAM_PROPERTIES:I = 0x9

.field public static final PARAM_STRING_SIZE_MAX:I = 0x20

.field private static final TAG:Ljava/lang/String; = "Equalizer"


# instance fields
.field private mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

.field private mNumBands:S

.field private mNumPresets:I

.field private mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

.field private final mParamListenerLock:Ljava/lang/Object;

.field private mPresetNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>(II)V
    .locals 9
    .parameter "priority"
    .parameter "audioSession"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    sget-object v5, Landroid/media/audiofx/Equalizer;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    sget-object v6, Landroid/media/audiofx/Equalizer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v5, v6, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    iput-short v7, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    iput-object v8, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    iput-object v8, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    move-result v5

    iput v5, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    iget v5, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-eqz v5, :cond_1

    iget v5, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    const/16 v5, 0x20

    new-array v4, v5, [B

    .local v4, value:[B
    const/4 v5, 0x2

    new-array v3, v5, [I

    .local v3, param:[I
    const/16 v5, 0x8

    aput v5, v3, v7

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v5, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-ge v1, v5, :cond_1

    const/4 v5, 0x1

    aput v1, v3, v5

    invoke-virtual {p0, v3, v4}, Landroid/media/audiofx/Equalizer;->getParameter([I[B)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    const/4 v2, 0x0

    .local v2, length:I
    :goto_1
    aget-byte v5, v4, v2

    if-eqz v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v5, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "ISO-8859-1"

    invoke-direct {v6, v4, v7, v2, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v6, v5, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v5, "Equalizer"

    const-string v6, "preset name decode error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #param:[I
    .end local v4           #value:[B
    :cond_1
    return-void
.end method

.method static synthetic access$000(Landroid/media/audiofx/Equalizer;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    return-object v0
.end method


# virtual methods
.method public getBand(I)S
    .locals 5
    .parameter "frequency"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [I

    .local v0, param:[I
    new-array v1, v4, [S

    .local v1, result:[S
    const/4 v2, 0x5

    aput v2, v0, v3

    aput p1, v0, v4

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    aget-short v2, v1, v3

    return v2
.end method

.method public getBandFreqRange(S)[I
    .locals 4
    .parameter "band"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    new-array v0, v2, [I

    .local v0, param:[I
    new-array v1, v2, [I

    .local v1, result:[I
    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v0, v2

    const/4 v2, 0x1

    aput p1, v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Equalizer;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    return-object v1
.end method

.method public getBandLevel(S)S
    .locals 5
    .parameter "band"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [I

    .local v0, param:[I
    new-array v1, v2, [S

    .local v1, result:[S
    aput v4, v0, v3

    aput p1, v0, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    aget-short v2, v1, v3

    return v2
.end method

.method public getBandLevelRange()[S
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

    new-array v0, v1, [S

    .local v0, result:[S
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    return-object v0
.end method

.method public getCenterFreq(S)I
    .locals 5
    .parameter "band"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [I

    .local v0, param:[I
    new-array v1, v4, [I

    .local v1, result:[I
    const/4 v2, 0x3

    aput v2, v0, v3

    aput p1, v0, v4

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Equalizer;->getParameter([I[I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    aget v2, v1, v3

    return v2
.end method

.method public getCurrentPreset()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    new-array v0, v1, [S

    .local v0, result:[S
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getNumberOfBands()S
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-eqz v2, :cond_0

    iget-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    :goto_0
    return v2

    :cond_0
    new-array v0, v4, [I

    .local v0, param:[I
    aput v3, v0, v3

    new-array v1, v4, [S

    .local v1, result:[S
    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    aget-short v2, v1, v3

    iput-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    iget-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    goto :goto_0
.end method

.method public getNumberOfPresets()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    new-array v0, v1, [S

    .local v0, result:[S
    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    const/4 v1, 0x0

    aget-short v1, v0, v1

    return v1
.end method

.method public getPresetName(S)Ljava/lang/String;
    .locals 1
    .parameter "preset"

    .prologue
    if-ltz p1, :cond_0

    iget v0, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getProperties()Landroid/media/audiofx/Equalizer$Settings;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    iget-short v3, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x4

    new-array v1, v3, [B

    .local v1, param:[B
    const/16 v3, 0x9

    invoke-virtual {p0, v3, v1}, Landroid/media/audiofx/Equalizer;->getParameter(I[B)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    new-instance v2, Landroid/media/audiofx/Equalizer$Settings;

    invoke-direct {v2}, Landroid/media/audiofx/Equalizer$Settings;-><init>()V

    .local v2, settings:Landroid/media/audiofx/Equalizer$Settings;
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v3}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    move-result v3

    iput-short v3, v2, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    iget-short v3, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    new-array v3, v3, [S

    iput-object v3, v2, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-short v3, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ge v0, v3, :cond_0

    iget-object v3, v2, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v1, v4}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    move-result v4

    aput-short v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public setBandLevel(SS)V
    .locals 5
    .parameter "band"
    .parameter "level"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v4, [I

    .local v0, param:[I
    new-array v1, v3, [S

    .local v1, value:[S
    aput v4, v0, v2

    aput p1, v0, v3

    aput-short p2, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Equalizer;->setParameter([I[S)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    return-void
.end method

.method public setParameterListener(Landroid/media/audiofx/Equalizer$OnParameterChangeListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    if-nez v1, :cond_0

    iput-object p1, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    new-instance v1, Landroid/media/audiofx/Equalizer$BaseParameterListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/media/audiofx/Equalizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Equalizer;Landroid/media/audiofx/Equalizer$1;)V

    iput-object v1, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    iget-object v1, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

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

.method public setProperties(Landroid/media/audiofx/Equalizer$Settings;)V
    .locals 7
    .parameter "settings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-short v2, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    iget-object v3, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    array-length v3, v3

    if-ne v2, v3, :cond_0

    iget-short v2, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    iget-short v3, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-eq v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "settings invalid band count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-short v4, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-array v2, v6, [[B

    iget-short v3, p1, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    invoke-virtual {p0, v3}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v4

    iget-short v3, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    invoke-virtual {p0, v3}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->concatArrays([[B)[B

    move-result-object v1

    .local v1, param:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ge v0, v2, :cond_2

    new-array v2, v6, [[B

    aput-object v1, v2, v4

    iget-object v3, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    aget-short v3, v3, v0

    invoke-virtual {p0, v3}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->concatArrays([[B)[B

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v2, 0x9

    invoke-virtual {p0, v2, v1}, Landroid/media/audiofx/Equalizer;->setParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    return-void
.end method

.method public usePreset(S)V
    .locals 1
    .parameter "preset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/Equalizer;->setParameter(IS)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    return-void
.end method
