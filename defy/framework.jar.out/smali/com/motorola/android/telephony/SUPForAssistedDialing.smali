.class public final Lcom/motorola/android/telephony/SUPForAssistedDialing;
.super Ljava/lang/Object;
.source "SUPForAssistedDialing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/SUPForAssistedDialing$1;,
        Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_MOT_SETTING_UPDATE:I = 0x1

.field public static final mADLock:Ljava/lang/Object;

.field private static mCurrentMcc:I

.field static mCurrentSid:I

.field private static mMccTable:Lcom/motorola/android/telephony/MCCTables;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    sput v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    sput v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "phone"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SUPForAssistedDialing"

    iput-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->LOG_TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v0, Lcom/motorola/android/telephony/MCCTables;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/motorola/android/telephony/MCCTables;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    new-instance v0, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;-><init>(Lcom/motorola/android/telephony/SUPForAssistedDialing;Lcom/motorola/android/telephony/SUPForAssistedDialing$1;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/telephony/SUPForAssistedDialing;Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateMotoSettings(Lcom/motorola/android/telephony/MCCEntry;)V

    return-void
.end method

.method private updateCountryDetailsFromUserTable()V
    .locals 2

    .prologue
    sget-object v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v1}, Lcom/motorola/android/telephony/MCCTables;->getCountryFromUserTable()Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .local v0, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    :cond_0
    return-void
.end method

.method private updateCountryDetailsFromVZWTable(I)V
    .locals 2
    .parameter "mcc"

    .prologue
    sget-object v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v1, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    .local v0, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v1, v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    :cond_0
    return-void
.end method

.method private updateMotoSettings(Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 4
    .parameter "entry"

    .prologue
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mADLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "cur_country_mcc"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->MCC:I

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "cur_country_code"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->countryCode:I

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "cur_country_name"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->countryName:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "cur_country_idd"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->IDD:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "cur_country_ndd"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->NDD:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "cur_country_area_code"

    iget-object v3, p1, Lcom/motorola/android/telephony/MCCEntry;->areaCode:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v2, "cur_country_mdn_len"

    iget v3, p1, Lcom/motorola/android/telephony/MCCEntry;->MDNLength:I

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V
    .locals 1
    .parameter "entry"

    .prologue
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->addUnknownCountry(Lcom/motorola/android/telephony/MCCEntry;)V

    iget-object v0, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    goto :goto_0
.end method

.method public checkAndUpdateUnknownMcc(IIII)I
    .locals 5
    .parameter "mcc"
    .parameter "sid"
    .parameter "tz"
    .parameter "DSTFlag"

    .prologue
    const/4 v0, 0x0

    .local v0, isUnknownMccNotified:I
    sput p1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v3, :cond_0

    const-string v3, "SUPForAssistedDialing"

    const-string v4, " MCC lookup table not initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .end local v0           #isUnknownMccNotified:I
    .local v1, isUnknownMccNotified:I
    :goto_0
    return v1

    .end local v1           #isUnknownMccNotified:I
    .restart local v0       #isUnknownMccNotified:I
    :cond_0
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3, p2, p3, p4}, Lcom/motorola/android/telephony/MCCTables;->checkUnknownMcc(III)I

    move-result v2

    .local v2, tempMcc:I
    if-lez v2, :cond_1

    const/4 v0, 0x1

    sput p2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    invoke-direct {p0, v2}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateCountryDetailsFromVZWTable(I)V

    :goto_1
    move v1, v0

    .end local v0           #isUnknownMccNotified:I
    .restart local v1       #isUnknownMccNotified:I
    goto :goto_0

    .end local v1           #isUnknownMccNotified:I
    .restart local v0       #isUnknownMccNotified:I
    :cond_1
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    if-ne v3, p2, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    sput p2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    invoke-direct {p0}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateCountryDetailsFromUserTable()V

    goto :goto_1

    :cond_3
    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    if-eq v3, p2, :cond_4

    sput p2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    :cond_4
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public checkUnknownMcc(III)I
    .locals 1
    .parameter "sid"
    .parameter "tz"
    .parameter "DSTflag"

    .prologue
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1, p2, p3}, Lcom/motorola/android/telephony/MCCTables;->checkUnknownMcc(III)I

    move-result v0

    goto :goto_0
.end method

.method public getAllCountryList()[Lcom/motorola/android/telephony/MCCEntry;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MCCTables;->getAllCountryListInDb()[Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public getEntryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;
    .locals 1
    .parameter "mcc"

    .prologue
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v0

    goto :goto_0
.end method

.method public isCtryNameExist(Ljava/lang/String;)Z
    .locals 1
    .parameter "countryName"

    .prologue
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/MCCTables;->isCtryNameExist(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public isUnknownCountryExist()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MCCTables;->isUnknownCountryExist()Z

    move-result v0

    goto :goto_0
.end method

.method public removeUnknownCountry()V
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    goto :goto_0
.end method

.method public updateCurrentCountryDetails(IIII)I
    .locals 5
    .parameter "mcc"
    .parameter "sid"
    .parameter "tz"
    .parameter "DSTFlag"

    .prologue
    const/4 v0, 0x1

    .local v0, isUnknownMccNotified:I
    const/4 v2, 0x0

    .local v2, mccEntry:Lcom/motorola/android/telephony/MCCEntry;
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    if-nez v3, :cond_0

    move v1, v0

    .end local v0           #isUnknownMccNotified:I
    .local v1, isUnknownMccNotified:I
    :goto_0
    return v1

    .end local v1           #isUnknownMccNotified:I
    .restart local v0       #isUnknownMccNotified:I
    :cond_0
    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    if-ne v3, p1, :cond_1

    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    if-ne v3, p2, :cond_1

    const/4 v0, 0x2

    move v1, v0

    .end local v0           #isUnknownMccNotified:I
    .restart local v1       #isUnknownMccNotified:I
    goto :goto_0

    .end local v1           #isUnknownMccNotified:I
    .restart local v0       #isUnknownMccNotified:I
    :cond_1
    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3, p1}, Lcom/motorola/android/telephony/MCCTables;->getCountryByMCC(I)Lcom/motorola/android/telephony/MCCEntry;

    move-result-object v2

    if-eqz v2, :cond_3

    sget v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    if-eq p1, v3, :cond_2

    const/4 v0, 0x1

    sput p1, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentMcc:I

    const-string v3, "SUPForAssistedDialing"

    const-string v4, "Updating the Current country"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMccTable:Lcom/motorola/android/telephony/MCCTables;

    invoke-virtual {v3}, Lcom/motorola/android/telephony/MCCTables;->removeUnknownCountry()V

    iget-object v3, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mMotSettingUpdater:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-virtual {v3, v2}, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->update(Lcom/motorola/android/telephony/MCCEntry;)V

    :goto_1
    sput p2, Lcom/motorola/android/telephony/SUPForAssistedDialing;->mCurrentSid:I

    :goto_2
    move v1, v0

    .end local v0           #isUnknownMccNotified:I
    .restart local v1       #isUnknownMccNotified:I
    goto :goto_0

    .end local v1           #isUnknownMccNotified:I
    .restart local v0       #isUnknownMccNotified:I
    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->checkAndUpdateUnknownMcc(IIII)I

    move-result v0

    goto :goto_2
.end method
