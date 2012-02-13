.class public Lcom/android/phone/SoundEffect;
.super Ljava/lang/Object;
.source "SoundEffect.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "phone"

.field private static sDtmfTone:Landroid/media/MediaPlayer;

.field private static sDtmfToneFilePath:[Ljava/lang/String;

.field private static sLastDtmfPlayed:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/SoundEffect;->sDtmfTone:Landroid/media/MediaPlayer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private static getDtmfFileNameForIndex(I)Ljava/lang/String;
    .locals 2
    .parameter "index"

    .prologue
    const/16 v1, 0xa

    .line 69
    if-ge p0, v1, :cond_0

    .line 70
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, retVal:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 71
    .end local v0           #retVal:Ljava/lang/String;
    :cond_0
    if-ne p0, v1, :cond_1

    .line 72
    const-string v0, "_star"

    .restart local v0       #retVal:Ljava/lang/String;
    goto :goto_0

    .line 74
    .end local v0           #retVal:Ljava/lang/String;
    :cond_1
    const-string v0, "_pound"

    .restart local v0       #retVal:Ljava/lang/String;
    goto :goto_0
.end method

.method static init()V
    .locals 9

    .prologue
    .line 47
    const-string v1, ".mp3"

    .line 48
    .local v1, extension:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    .line 49
    .local v6, root:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/sounds/dtmf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, prefix:Ljava/lang/String;
    const/16 v7, 0xc

    new-array v7, v7, [Ljava/lang/String;

    sput-object v7, Lcom/android/phone/SoundEffect;->sDtmfToneFilePath:[Ljava/lang/String;

    .line 53
    sget-object v7, Lcom/android/phone/SoundEffect;->sDtmfToneFilePath:[Ljava/lang/String;

    array-length v4, v7

    .line 55
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 56
    invoke-static {v3}, Lcom/android/phone/SoundEffect;->getDtmfFileNameForIndex(I)Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, fileName:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    sget-object v7, Lcom/android/phone/SoundEffect;->sDtmfToneFilePath:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 55
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 64
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v2           #fileName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method static playDtmfTone(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 81
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    const-string v0, "phone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playDtmfTone called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    return-void

    .line 86
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    goto :goto_0
.end method
