.class public Lcom/android/phone/ChinaCityIdInfo;
.super Ljava/lang/Object;
.source "ChinaCityIdInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChinaCityIdInfo"


# instance fields
.field private mDisplayName:Ljava/lang/String;

.field private mStrNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v1, p0, Lcom/android/phone/ChinaCityIdInfo;->mDisplayName:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v1, p0, Lcom/android/phone/ChinaCityIdInfo;->mStrNumber:Ljava/lang/String;

    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/phone/LocationRemoteServiceManager;->isAvailable(Landroid/content/Context;Landroid/os/Handler;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public computeDisplayName(Landroid/graphics/Paint;I)Ljava/lang/String;
    .locals 3
    .parameter "paint"
    .parameter "wAvailable"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/phone/ChinaCityIdInfo;->mDisplayName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/phone/ChinaCityIdInfo;->mStrNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/phone/LocationRemoteServiceManager;->getLocInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ChinaCityIdInfo;->mDisplayName:Ljava/lang/String;

    .line 57
    :cond_0
    const-string v0, "ChinaCityIdInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display City Info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/ChinaCityIdInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/android/phone/ChinaCityIdInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public doLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V
    .locals 1
    .parameter "context"
    .parameter "strNumber"
    .parameter "isIncoming"
    .parameter "isNanpNetwork"

    .prologue
    .line 63
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ChinaCityIdInfo;->mStrNumber:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/android/phone/ChinaCityIdInfo;->mStrNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/phone/LocationRemoteServiceManager;->getLocInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ChinaCityIdInfo;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public doLookup(Landroid/content/Context;Ljava/lang/CharSequence;ZZLcom/android/phone/CityIdInfo$OnQueryCompleteListener;)V
    .locals 2
    .parameter "context"
    .parameter "strNumber"
    .parameter "isIncoming"
    .parameter "isNanpNetwork"
    .parameter "listener"

    .prologue
    .line 75
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ChinaCityIdInfo;->mStrNumber:Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lcom/android/phone/ChinaCityIdInfo;->mStrNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/phone/LocationRemoteServiceManager;->getLocInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/ChinaCityIdInfo;->mDisplayName:Ljava/lang/String;

    .line 81
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p5, v0, v1}, Lcom/android/phone/CityIdInfo$OnQueryCompleteListener;->onCityIdQueryComplete(ILjava/lang/Object;)V

    goto :goto_0
.end method
