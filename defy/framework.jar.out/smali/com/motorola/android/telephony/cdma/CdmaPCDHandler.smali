.class public final Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;
.super Ljava/lang/Object;
.source "CdmaPCDHandler.java"


# static fields
.field private static final DBG:Z = true

.field private static isNBPCDAllowed:Z

.field private static lastNBPCDStatus:Z

.field private static mCurrentIDD:Ljava/lang/String;

.field private static mCurrentMCC:I

.field private static mCurrentSID:I

.field private static mResolvedMCC:I


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mMCCTable:Lcom/motorola/android/telephony/MCCTables;

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    sput v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    const-string v0, "011"

    sput-object v0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    sput v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    sput v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mResolvedMCC:I

    sput-boolean v2, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    sput-boolean v2, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 3
    .parameter "phone"

    .prologue
    const-string v2, "CdmaPCDHandler"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CdmaPCDHandler"

    iput-object v2, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    new-instance v0, Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/MCCTables;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    const-string v0, "CdmaPCDHandler"

    const-string v0, "CdmaPCDHandler is constructed"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getCurrentIDD()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastNBPCDStatus()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    return v0
.end method

.method public static getResolvedMCC()I
    .locals 1

    .prologue
    sget v0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mResolvedMCC:I

    return v0
.end method

.method public static isNBPCDAllowed()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    return v0
.end method


# virtual methods
.method public handleNBPCDAttmptResult(Z)V
    .locals 4
    .parameter "result"

    .prologue
    const-string v1, "CdmaPCDHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleNBPCDAttmptResult:result "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isNBPCDAllowed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lastNBPCDStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_0

    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    if-eq v1, p1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    sget v2, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mResolvedMCC:I

    sget-boolean v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    invoke-virtual {v1, v2, v3, p1}, Lcom/motorola/android/telephony/MCCTables;->updateNBPCDSupportInfo(IZZ)V

    :cond_1
    sput-boolean p1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    sput-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    sget-boolean v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    if-eqz v1, :cond_3

    const-string v1, "true"

    move-object v0, v1

    .local v0, value:Ljava/lang/String;
    :goto_0
    const-string v1, "cdma.nbpcd.supported"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0           #value:Ljava/lang/String;
    :cond_2
    return-void

    :cond_3
    const-string v1, "false"

    move-object v0, v1

    goto :goto_0
.end method

.method public handleSetUpProcess(IIII)Z
    .locals 10
    .parameter "mcc"
    .parameter "sid"
    .parameter "tz"
    .parameter "DSTFlag"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, " mCurrentSID "

    const-string v8, " mCurrentIDD "

    const-string v5, "CdmaPCDHandler"

    const/4 v0, 0x0

    .local v0, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    const/4 v1, 0x0

    .local v1, resolvedMCC:I
    const-string v3, "CdmaPCDHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mcc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tz "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dstflag "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CdmaPCDHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentMCC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurrentSID "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurrentIDD "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    if-ne p1, v3, :cond_0

    sget v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    if-ne p2, v3, :cond_0

    const-string v3, "CdmaPCDHandler"

    const-string v3, "Return as nothing changed"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    :goto_0
    return v3

    :cond_0
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v3, :cond_1

    const-string v3, "CdmaPCDHandler"

    const-string v3, "MCC lookup table not initialized"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "CdmaPCDHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found data in VZW tables with MCC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    if-eq p1, v3, :cond_3

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    sput-object v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    const-string v3, "CdmaPCDHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated mCurrentMCC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurrentSID "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurrentIDD "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move v1, p1

    :cond_2
    :goto_2
    sput p1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    sput p2, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    sput v1, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mResolvedMCC:I

    const-string v3, "CdmaPCDHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updated: mCurrentMCC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurrentSID "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mCurrentIDD "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mResolvedMCC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mResolvedMCC:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_a

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3, v1}, Lcom/motorola/android/telephony/MCCTables;->isMCCSupportNBPCD(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "CdmaPCDHandler"

    const-string v3, "MCC Support NBPCD"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v7, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    sput-boolean v7, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    :goto_3
    const-string v3, "CdmaPCDHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNBPCDAllowed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lastNBPCDStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    if-eqz v3, :cond_b

    const-string v3, "true"

    move-object v2, v3

    .local v2, value:Ljava/lang/String;
    :goto_4
    const-string v3, "cdma.nbpcd.supported"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v7

    goto/16 :goto_0

    .end local v2           #value:Ljava/lang/String;
    :cond_3
    const-string v3, "CdmaPCDHandler"

    const-string v3, "IDD NOT Updated as MCC same as before"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    const-string v3, "CdmaPCDHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MCC NOT found in VZW table. MCC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentMCC:I

    if-ne v3, p1, :cond_5

    sget v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    if-ne v3, p2, :cond_5

    const-string v3, "CdmaPCDHandler"

    const-string v3, "IDD NOT Updated as MCC & SID same as before"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p1

    goto/16 :goto_2

    :cond_5
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3, p2, p3, p4}, Lcom/motorola/android/telephony/MCCTables;->checkUnknownMcc(III)I

    move-result v1

    const-string v3, "CdmaPCDHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUnknownMcc return MCC "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_6

    const-string v3, "CdmaPCDHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resolved the unknown mcc and get the valid MCC = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3, v1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    sput-object v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    const-string v3, "CdmaPCDHandler"

    const-string v3, "Could not resolve unknown MCC"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentSID:I

    if-eq v3, p2, :cond_7

    const-string v3, "CdmaPCDHandler"

    const-string v3, "Reset MCC to 011 as SID changed"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "011"

    sput-object v3, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mCurrentIDD:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    const-string v3, "CdmaPCDHandler"

    const-string v3, "IDD NOT Updated as SID same as before"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    const-string v3, "CdmaPCDHandler"

    const-string v3, "MCC NOT Support NBPCD"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->mMCCTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3, v1}, Lcom/motorola/android/telephony/MCCTables;->isLastNBPCDAttmptExpired(I)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "CdmaPCDHandler"

    const-string v3, "Last NBPCD Attempt Expired"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v7, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    sput-boolean v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    goto/16 :goto_3

    :cond_9
    const-string v3, "CdmaPCDHandler"

    const-string v3, "Last NBPCD Attempt NOT Expired"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    sput-boolean v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    goto/16 :goto_3

    :cond_a
    const-string v3, "CdmaPCDHandler"

    const-string v3, "MMC unresolved"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->isNBPCDAllowed:Z

    sput-boolean v6, Lcom/motorola/android/telephony/cdma/CdmaPCDHandler;->lastNBPCDStatus:Z

    goto/16 :goto_3

    :cond_b
    const-string v3, "false"

    move-object v2, v3

    goto/16 :goto_4
.end method
