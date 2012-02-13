.class public Lcom/android/internal/telephony/gsm/EonsHandler;
.super Landroid/os/Handler;
.source "EonsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    }
.end annotation


# static fields
.field private static final EONS_DISABLED:I = 0x0

.field private static final EVENT_GET_ALL_OPL_RECORDS_DONE:I = 0x5

.field private static final EVENT_GET_ALL_PNN_RECORDS_DONE:I = 0x6

.field private static final EVENT_GET_SST_DONE:I = 0x4

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x2

.field private static final EVENT_SIM_READY:I = 0x1

.field private static final EVENT_SIM_REFRESH:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "GSM"

.field private static final ONLY_PNN_ENABLED:I = 0x2

.field private static final PNN_OPL_ENABLED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EONS"

.field static localLOGV:Z


# instance fields
.field mEONSFeatureOn:Z

.field private mEonsLoadedRegistrant:Landroid/os/Registrant;

.field mOPLLoadFailed:Z

.field private mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

.field mPNNLoadFailed:Z

.field private mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private oplCache:Ljava/util/ArrayList;

.field private pnnCache:Ljava/util/ArrayList;

.field private sstPlmnOplValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/gsm/EonsHandler;->localLOGV:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSFeatureOn:Z

    new-instance v0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;-><init>(Lcom/android/internal/telephony/gsm/EonsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    const-string v0, "motorola.debug.eons"

    sget-boolean v1, Lcom/android/internal/telephony/gsm/EonsHandler;->localLOGV:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/EonsHandler;->localLOGV:Z

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForSIMReady(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10d002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSFeatureOn:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEONSFeatureOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSFeatureOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->onRadioOffOrNotAvailable()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private isEONSDataLoadingDone()Z
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEONSDataLoadingDone: mPNNLoadFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOPLLoadFailed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",oplCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pnnCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 5
    .parameter "servicestate"

    .prologue
    const/4 v0, 0x0

    .local v0, longname:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isNeedToWaitEONSName()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "updateServiceState: data not loaded, no longname till data loaded"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    .local v2, shortname:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isNeedToWaitEONSName()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "updateServiceState: data not loaded, no shortname till data loaded"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x0

    .local v1, numeric:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isNeedToWaitEONSName()Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "updateServiceState: data not loaded, no numeric till data loaded"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p1, v0, v2, v1}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateServiceState: servicestate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    return-void

    .end local v1           #numeric:Ljava/lang/String;
    .end local v2           #shortname:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v0, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .restart local v2       #shortname:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v2, v3, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    goto/16 :goto_1

    .restart local v1       #numeric:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method


# virtual methods
.method getEONSName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    return-object v0
.end method

.method getNameFromPnnRecord(I)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    .locals 9
    .parameter "record"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: record="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    new-instance v4, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;-><init>(Lcom/android/internal/telephony/gsm/EonsHandler;)V

    .local v4, ret:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    if-ge p1, v8, :cond_1

    :cond_0
    const-string v5, "getNameFromPnnRecord: invalid record/pnnCache"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    return-object v4

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: pnnCache.size()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    sub-int v6, p1, v8

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v1, v0

    .local v1, data:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PNN record[ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    aget-byte v5, v1, v5

    if-eq v5, v7, :cond_3

    const/4 v5, 0x1

    aget-byte v5, v1, v5

    if-eq v5, v7, :cond_3

    const/4 v5, 0x1

    aget-byte v3, v1, v5

    .local v3, length:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: longname length="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-static {v1, v5, v3}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: longname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    add-int/lit8 v5, v3, 0x2

    aget-byte v5, v1, v5

    if-eq v5, v7, :cond_2

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, v1, v5

    if-eq v5, v7, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: shortname length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    add-int/lit8 v5, v3, 0x4

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v1, v6

    invoke-static {v1, v5, v6}, Lcom/android/internal/telephony/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: shortname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v1           #data:[B
    .end local v3           #length:I
    :catch_0
    move-exception v5

    move-object v2, v5

    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNameFromPnnRecord: Exception while processing PNN data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v1       #data:[B
    .restart local v3       #length:I
    :cond_2
    :try_start_1
    const-string v5, "getNameFromPnnRecord: no short name"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v3           #length:I
    :cond_3
    const-string v5, "getNameFromPnnRecord: invalid EF_PNN Data"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSFeatureOn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v4, 0x6f38

    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v4, 0x6fc6

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v3

    const/16 v4, 0x6fc5

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/EonsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->onRadioOffOrNotAvailable()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0

    .local v2, data:[B
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->handleSstData([B)V

    goto :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v2           #data:[B
    :pswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in fetching OPL Records "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    :cond_1
    const-string v3, "OPL loaded"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/EonsHandler;->updateEONSName(Landroid/telephony/ServiceState;Landroid/telephony/gsm/GsmCellLocation;)Z

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEonsLoadedRegistrant:Landroid/os/Registrant;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEonsLoadedRegistrant:Landroid/os/Registrant;

    invoke-virtual {v3}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in fetching PNN Records "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    :cond_2
    const-string v3, "PNN loaded"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v3, v3, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->cellLoc:Landroid/telephony/gsm/GsmCellLocation;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/EonsHandler;->updateEONSName(Landroid/telephony/ServiceState;Landroid/telephony/gsm/GsmCellLocation;)Z

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEonsLoadedRegistrant:Landroid/os/Registrant;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEonsLoadedRegistrant:Landroid/os/Registrant;

    invoke-virtual {v3}, Landroid/os/Registrant;->notifyRegistrant()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method handleSimRefresh([I)V
    .locals 5
    .parameter "result"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSFeatureOn()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSimRefresh: result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    aget v0, p1, v2

    packed-switch v0, :pswitch_data_0

    const-string v0, "handleSimRefresh: unknown operation"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    aget v0, p1, v4

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iput v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6f38

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0

    :sswitch_1
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fc5

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_0

    :sswitch_2
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v0

    const/16 v1, 0x6fc6

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/EonsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;-><init>(Lcom/android/internal/telephony/gsm/EonsHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    iput v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/EonsHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/EonsHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x6f38 -> :sswitch_0
        0x6fc5 -> :sswitch_1
        0x6fc6 -> :sswitch_2
    .end sparse-switch
.end method

.method handleSstData([B)V
    .locals 5
    .parameter "data"

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSstData data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_SIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xc

    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSstData: 2G Sim sstPlmnOplValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSstData: sstPlmnOplValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_1
    iget v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    if-ne v1, v4, :cond_0

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSstData: Exception in processing SST Data "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCardApplication$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/IccCardApplication$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/IccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/IccCardApplication$AppType;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    if-ne v1, v4, :cond_5

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSstData: 3G Sim sstPlmnOplValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    if-ne v1, v3, :cond_4

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method isEONSEnabledOnSIM()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    iget v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEONSFeatureOn()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEONSFeatureOn:Z

    return v0
.end method

.method isNeedToWaitEONSName()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSFeatureOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSEnabledOnSIM()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSDataLoadingDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/gsm/EonsHandler;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EONS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EONS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method lookupEONSName(Ljava/lang/String;IZ)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    .locals 18
    .parameter "operatorNumeric"
    .parameter "lac"
    .parameter "need2MatchLAC"

    .prologue
    new-instance v13, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;-><init>(Lcom/android/internal/telephony/gsm/EonsHandler;)V

    .local v13, ret:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "lookupEONSName: operatorNumeric="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", lac="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", need2MatchLAC="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_a

    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_1

    :cond_0
    const-string v16, "lookupEONSName: operatorNumeric is null or empty."

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    move-object v14, v13

    .end local v13           #ret:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    .local v14, ret:Ljava/lang/Object;
    :goto_0
    return-object v14

    .end local v14           #ret:Ljava/lang/Object;
    .restart local v13       #ret:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    :cond_1
    if-eqz p3, :cond_2

    const/16 v16, -0x1

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    const-string v16, "lookupEONSName: invalid lac"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    move-object v14, v13

    .restart local v14       #ret:Ljava/lang/Object;
    goto :goto_0

    .end local v14           #ret:Ljava/lang/Object;
    :cond_2
    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v15, v0

    fill-array-data v15, :array_0

    .local v15, simPlmn:[I
    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v4, v0

    fill-array-data v4, :array_1

    .local v4, bcchPlmn:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, count:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "lookupEONSName: oplCache.size="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v5, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    check-cast v6, [B

    .local v6, data:[B
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "lookupEONSName: oplCache["

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v6}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    const/16 v16, 0x0

    const/16 v17, 0x0

    aget-byte v17, v6, v17

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x0

    aget-byte v17, v6, v17

    shr-int/lit8 v17, v17, 0x4

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, 0x1

    aget-byte v17, v6, v17

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, 0x2

    aget-byte v17, v6, v17

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    const/16 v16, 0x4

    const/16 v17, 0x2

    aget-byte v17, v6, v17

    shr-int/lit8 v17, v17, 0x4

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    const/16 v16, 0x5

    const/16 v17, 0x1

    aget-byte v17, v6, v17

    shr-int/lit8 v17, v17, 0x4

    and-int/lit8 v17, v17, 0xf

    aput v17, v15, v16

    const/4 v9, 0x0

    .local v9, ind1:I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    move v0, v9

    move/from16 v1, v16

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v16

    const/16 v17, 0x30

    sub-int v16, v16, v17

    aput v16, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    const/16 v16, 0x3

    aget-byte v16, v6, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    const/16 v17, 0x4

    aget-byte v17, v6, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v10, v16, v17

    .local v10, oplDataLac1:I
    const/16 v16, 0x5

    aget-byte v16, v6, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v16, v16, 0x8

    const/16 v17, 0x6

    aget-byte v17, v6, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v11, v16, v17

    .local v11, oplDataLac2:I
    const/16 v16, 0x7

    aget-byte v16, v6, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-short v0, v0

    move v12, v0

    .local v12, oplDataPnnNum:S
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "lookupEONSName: lac1="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", lac2="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", lac="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", pnn rec num="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v16

    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v4

    move/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->matchSimPlmn([I[II)Z

    move-result v16

    if-eqz v16, :cond_8

    if-eqz p3, :cond_4

    move v0, v10

    move/from16 v1, p2

    if-gt v0, v1, :cond_9

    move/from16 v0, p2

    move v1, v11

    if-gt v0, v1, :cond_9

    :cond_4
    const-string v16, "lookupEONSName: lac in range"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    if-lez v12, :cond_6

    const/16 v16, 0xff

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->getNameFromPnnRecord(I)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    move-result-object v13

    .end local v4           #bcchPlmn:[I
    .end local v5           #count:I
    .end local v6           #data:[B
    .end local v8           #i:I
    .end local v9           #ind1:I
    .end local v10           #oplDataLac1:I
    .end local v11           #oplDataLac2:I
    .end local v12           #oplDataPnnNum:S
    .end local v15           #simPlmn:[I
    :cond_5
    :goto_3
    move-object v14, v13

    .restart local v14       #ret:Ljava/lang/Object;
    goto/16 :goto_0

    .end local v14           #ret:Ljava/lang/Object;
    .restart local v4       #bcchPlmn:[I
    .restart local v5       #count:I
    .restart local v6       #data:[B
    .restart local v8       #i:I
    .restart local v9       #ind1:I
    .restart local v10       #oplDataLac1:I
    .restart local v11       #oplDataLac2:I
    .restart local v12       #oplDataPnnNum:S
    .restart local v15       #simPlmn:[I
    :cond_6
    if-nez v12, :cond_7

    const-string v16, "lookupEONSName: pnn rec num is 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .end local v6           #data:[B
    .end local v9           #ind1:I
    .end local v10           #oplDataLac1:I
    .end local v11           #oplDataLac2:I
    .end local v12           #oplDataPnnNum:S
    :catch_0
    move-exception v16

    move-object/from16 v7, v16

    .local v7, e:Ljava/lang/Exception;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "lookupEONSName: Exception while processing OPL data "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    goto :goto_3

    .end local v7           #e:Ljava/lang/Exception;
    .restart local v6       #data:[B
    .restart local v9       #ind1:I
    .restart local v10       #oplDataLac1:I
    .restart local v11       #oplDataLac2:I
    .restart local v12       #oplDataPnnNum:S
    :cond_7
    :try_start_1
    const-string v16, "lookupEONSName: invalid pnn rec num"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    :cond_8
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_9
    const-string v16, "lookupEONSName: hLac not in range"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .end local v4           #bcchPlmn:[I
    .end local v5           #count:I
    .end local v6           #data:[B
    .end local v8           #i:I
    .end local v9           #ind1:I
    .end local v10           #oplDataLac1:I
    .end local v11           #oplDataLac2:I
    .end local v12           #oplDataPnnNum:S
    .end local v15           #simPlmn:[I
    :cond_a
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "lookupEONSName: can not lookup, oplCache="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", pnnCache="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/EonsHandler;->loge(Ljava/lang/String;)V

    goto :goto_3

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method matchSimPlmn([I[II)Z
    .locals 10
    .parameter "simPlmn"
    .parameter "bcchPlmn"
    .parameter "length"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    const-string v3, "Enter matchSimPlmn"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    const/16 v2, 0xd

    .local v2, wildCardDigit:I
    const/4 v1, 0x0

    .local v1, match:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "matchSimPlmn: simPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", bcchPlmn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    aget v3, p1, v6

    const/16 v4, 0xf

    if-ne v3, v4, :cond_0

    aput v5, p1, v6

    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_2

    aget v3, p1, v0

    if-ne v3, v2, :cond_1

    aget v3, p2, v0

    aput v3, p1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget v3, p1, v5

    aget v4, p2, v5

    if-ne v3, v4, :cond_3

    aget v3, p1, v7

    aget v4, p2, v7

    if-ne v3, v4, :cond_3

    const/4 v3, 0x2

    aget v3, p1, v3

    const/4 v4, 0x2

    aget v4, p2, v4

    if-ne v3, v4, :cond_3

    if-ne p3, v6, :cond_5

    aget v3, p1, v8

    aget v4, p2, v8

    if-ne v3, v4, :cond_4

    aget v3, p1, v9

    aget v4, p2, v9

    if-ne v3, v4, :cond_4

    move v1, v7

    :cond_3
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Leave matchSimPlmn match="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    return v1

    :cond_4
    move v1, v5

    goto :goto_1

    :cond_5
    aget v3, p1, v8

    aget v4, p2, v8

    if-ne v3, v4, :cond_6

    aget v3, p1, v9

    aget v4, p2, v9

    if-ne v3, v4, :cond_6

    aget v3, p1, v6

    aget v4, p2, v6

    if-ne v3, v4, :cond_6

    move v1, v7

    :goto_2
    goto :goto_1

    :cond_6
    move v1, v5

    goto :goto_2
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->oplCache:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->pnnCache:Ljava/util/ArrayList;

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLLoadFailed:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mPNNLoadFailed:Z

    return-void
.end method

.method setEonsLoadedRegistrant(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mEonsLoadedRegistrant:Landroid/os/Registrant;

    return-void
.end method

.method public updateAvailableNetworksWithEONS(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/NetworkInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, operators:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/NetworkInfo;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSFeatureOn()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/EonsHandler;->isEONSEnabledOnSIM()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/NetworkInfo;

    .local v4, operator:Lcom/android/internal/telephony/gsm/NetworkInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAailableNetworksWithEONS: before operator="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .local v3, numeric:Ljava/lang/String;
    const/4 v7, -0x1

    const/4 v8, 0x0

    invoke-virtual {p0, v3, v7, v8}, Lcom/android/internal/telephony/gsm/EonsHandler;->lookupEONSName(Ljava/lang/String;IZ)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    move-result-object v5

    .local v5, pnnname:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    if-eqz v5, :cond_0

    iget-object v7, v5, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, v5, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, v5, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->longName:Ljava/lang/String;

    move-object v1, v7

    .local v1, longname:Ljava/lang/String;
    :goto_1
    iget-object v7, v5, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v7, v5, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    iget-object v7, v5, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->shortName:Ljava/lang/String;

    move-object v6, v7

    .local v6, shortname:Ljava/lang/String;
    :goto_2
    new-instance v2, Lcom/android/internal/telephony/gsm/NetworkInfo;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getState()Lcom/android/internal/telephony/gsm/NetworkInfo$State;

    move-result-object v8

    invoke-direct {v2, v1, v6, v7, v8}, Lcom/android/internal/telephony/gsm/NetworkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/gsm/NetworkInfo$State;)V

    .local v2, newop:Lcom/android/internal/telephony/gsm/NetworkInfo;
    invoke-virtual {p1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAailableNetworksWithEONS: after operator="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    .end local v1           #longname:Ljava/lang/String;
    .end local v2           #newop:Lcom/android/internal/telephony/gsm/NetworkInfo;
    .end local v6           #shortname:Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    goto :goto_1

    .restart local v1       #longname:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/NetworkInfo;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    goto :goto_2

    .end local v0           #i:I
    .end local v1           #longname:Ljava/lang/String;
    .end local v3           #numeric:Ljava/lang/String;
    .end local v4           #operator:Lcom/android/internal/telephony/gsm/NetworkInfo;
    .end local v5           #pnnname:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    :cond_3
    return-void
.end method

.method updateEONSName(Landroid/telephony/ServiceState;Landroid/telephony/gsm/GsmCellLocation;)Z
    .locals 7
    .parameter "servicestate"
    .parameter "cellloc"

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    .local v3, val:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;
    iget v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/EonsHandler;->getNameFromPnnRecord(I)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    move-result-object v3

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    const/4 v0, 0x1

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/EonsHandler;->updateServiceState(Landroid/telephony/ServiceState;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEONSName: mOPLPNNName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->mOPLPNNName:Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", changed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/EonsHandler;->log(Ljava/lang/String;)V

    return v0

    :cond_2
    iget v4, p0, Lcom/android/internal/telephony/gsm/EonsHandler;->sstPlmnOplValue:I

    if-ne v4, v6, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .local v2, operatorNumeric:Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    move v1, v4

    .local v1, lac:I
    :goto_1
    invoke-virtual {p0, v2, v1, v6}, Lcom/android/internal/telephony/gsm/EonsHandler;->lookupEONSName(Ljava/lang/String;IZ)Lcom/android/internal/telephony/gsm/EonsHandler$PNNName;

    move-result-object v3

    goto :goto_0

    .end local v1           #lac:I
    :cond_3
    const/4 v4, -0x1

    move v1, v4

    goto :goto_1
.end method
