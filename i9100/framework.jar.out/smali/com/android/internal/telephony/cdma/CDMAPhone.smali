.class public Lcom/android/internal/telephony/cdma/CDMAPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "CDMAPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CDMAPhone$2;
    }
.end annotation


# static fields
.field static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DBG:Z = true

.field private static final DEFAULT_ECM_EXIT_TIMER_VALUE:I = 0x493e0

.field private static final INVALID_SYSTEM_SELECTION_CODE:I = -0x1

.field private static final IS683A_FEATURE_CODE:Ljava/lang/String; = "*228"

.field private static final IS683A_FEATURE_CODE_NUM_DIGITS:I = 0x4

.field private static final IS683A_SYS_SEL_CODE_NUM_DIGITS:I = 0x2

.field private static final IS683A_SYS_SEL_CODE_OFFSET:I = 0x4

.field private static final IS683_CONST_1900MHZ_A_BLOCK:I = 0x2

.field private static final IS683_CONST_1900MHZ_B_BLOCK:I = 0x3

.field private static final IS683_CONST_1900MHZ_C_BLOCK:I = 0x4

.field private static final IS683_CONST_1900MHZ_D_BLOCK:I = 0x5

.field private static final IS683_CONST_1900MHZ_E_BLOCK:I = 0x6

.field private static final IS683_CONST_1900MHZ_F_BLOCK:I = 0x7

.field private static final IS683_CONST_800MHZ_A_BAND:I = 0x0

.field private static final IS683_CONST_800MHZ_B_BAND:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field static final RESTART_ECM_TIMER:I = 0x0

.field private static final UNACTIVATED_MIN2_VALUE:Ljava/lang/String; = "000000"

.field private static final UNACTIVATED_MIN_VALUE:Ljava/lang/String; = "1111110111"

.field static final VM_COUNT_CDMA:Ljava/lang/String; = "vm_count_key_cdma"

.field private static final VM_NUMBER_CDMA:Ljava/lang/String; = "vm_number_key_cdma"

.field private static pOtaSpNumSchema:Ljava/util/regex/Pattern;


# instance fields
.field mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

.field private mCarrierOtaSpNumSchema:Ljava/lang/String;

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

.field mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

.field private mEsn:Ljava/lang/String;

.field private mExitEcmRunnable:Ljava/lang/Runnable;

.field private mIsPhoneInEcmState:Z

.field private mMeid:Ljava/lang/String;

.field private mNvLoadedRegistrants:Landroid/os/RegistrantList;

.field mPendingMmis:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

.field mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

.field mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

.field mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

.field mSMS:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

.field mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mVmNumber:Ljava/lang/String;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1362
    const-string v0, "[,\\s]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 9
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 152
    invoke-direct {p0, p3, p1, p2, p4}, Lcom/android/internal/telephony/PhoneBase;-><init>(Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 97
    iput-object v6, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    .line 117
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    .line 120
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    .line 123
    new-instance v4, Landroid/os/RegistrantList;

    invoke-direct {v4}, Landroid/os/RegistrantList;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 136
    new-instance v4, Lcom/android/internal/telephony/cdma/CDMAPhone$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone$1;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    .line 154
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v7}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 155
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 156
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 157
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSMS:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 158
    new-instance v4, Lcom/android/internal/telephony/cdma/RuimFileHandler;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/RuimFileHandler;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 159
    new-instance v4, Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 160
    new-instance v4, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/CdmaDataConnectionTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 161
    new-instance v4, Lcom/android/internal/telephony/cdma/RuimCard;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/RuimCard;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    .line 162
    new-instance v4, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    .line 163
    new-instance v4, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSMS:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-direct {v4, p0, v5}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/SMSDispatcher;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    .line 164
    new-instance v4, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 165
    new-instance v4, Lcom/android/internal/telephony/cdma/EriManager;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, v5}, Lcom/android/internal/telephony/cdma/EriManager;-><init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 167
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 168
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    const/16 v5, 0x16

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/cdma/RuimRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 169
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x8

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 170
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x5

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 171
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, p0, v7, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 172
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v5, 0x13

    invoke-virtual {v4, p0, v5, v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForNetworkAttach(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 173
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x17

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForNVReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 174
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x19

    invoke-interface {v4, p0, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 176
    const-string/jumbo v4, "power"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 178
    .local v3, pm:Landroid/os/PowerManager;
    const-string v4, "CDMA"

    invoke-virtual {v3, v8, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 181
    const-string v4, "gsm.current.phone-type"

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string/jumbo v4, "ril.cdma.inecmmode"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, inEcm:Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 187
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-eqz v4, :cond_0

    .line 189
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x1a

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 193
    :cond_0
    const-string/jumbo v4, "ro.cdma.otaspnumschema"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    .line 197
    const-string/jumbo v4, "ro.cdma.home.operator.alpha"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, operatorAlpha:Ljava/lang/String;
    const-string v4, "gsm.sim.operator.alpha"

    invoke-virtual {p0, v4, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string/jumbo v4, "ro.cdma.home.operator.numeric"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, operatorNumeric:Ljava/lang/String;
    const-string v4, "gsm.sim.operator.numeric"

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setIsoCountryProperty(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateCurrentCarrierInProvider(Ljava/lang/String;)Z

    .line 211
    invoke-interface {p3, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyMessageWaitingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 212
    return-void
.end method

.method private checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z
    .locals 8
    .parameter "sysSelCodeInt"
    .parameter "sch"

    .prologue
    .line 1336
    const/4 v2, 0x0

    .line 1339
    .local v2, isOtaSpNum:Z
    const/4 v6, 0x1

    :try_start_0
    aget-object v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1340
    .local v5, selRc:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 1341
    add-int/lit8 v6, v1, 0x2

    aget-object v6, p2, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v6, v1, 0x3

    aget-object v6, p2, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1342
    add-int/lit8 v6, v1, 0x2

    aget-object v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1343
    .local v4, selMin:I
    add-int/lit8 v6, v1, 0x3

    aget-object v6, p2, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1346
    .local v3, selMax:I
    if-lt p1, v4, :cond_1

    if-gt p1, v3, :cond_1

    .line 1347
    const/4 v2, 0x1

    .line 1357
    .end local v1           #i:I
    .end local v3           #selMax:I
    .end local v4           #selMin:I
    .end local v5           #selRc:I
    :cond_0
    :goto_1
    return v2

    .line 1340
    .restart local v1       #i:I
    .restart local v5       #selRc:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1352
    .end local v1           #i:I
    .end local v5           #selRc:I
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 1355
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v6, "CDMA"

    const-string v7, "checkOtaSpNumBasedOnSysSelCode, error"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private extractSelCodeFromOtaSpNum(Ljava/lang/String;)I
    .locals 6
    .parameter "dialStr"

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1312
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1313
    .local v0, dialStrLen:I
    const/4 v1, -0x1

    .line 1315
    .local v1, sysSelCodeInt:I
    const-string v2, "*228"

    invoke-virtual {p1, v3, v2, v3, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lt v0, v5, :cond_0

    .line 1321
    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1325
    :cond_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractSelCodeFromOtaSpNum "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    return v1
.end method

.method private handleEnterEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 994
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleEnterEmergencyCallbackMode,mIsPhoneInEcmState= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-nez v2, :cond_0

    .line 999
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 1001
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyCallbackModeChange()V

    .line 1002
    const-string/jumbo v2, "ril.cdma.inecmmode"

    const-string/jumbo v3, "true"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    const-string/jumbo v2, "ro.cdma.ecmexittimer"

    const-wide/32 v3, 0x493e0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1008
    .local v0, delayInMillis:J
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1010
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1012
    .end local v0           #delayInMillis:J
    :cond_0
    return-void
.end method

.method private handleExitEmergencyCallbackMode(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 1015
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1017
    .local v0, ar:Landroid/os/AsyncResult;
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleExitEmergencyCallbackMode,ar.exception , mIsPhoneInEcmState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1023
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    if-eqz v1, :cond_0

    .line 1024
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v1, v0}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 1027
    :cond_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 1028
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-eqz v1, :cond_1

    .line 1029
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    .line 1030
    const-string/jumbo v1, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->sendEmergencyCallbackModeChange()V

    .line 1035
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataEnabled(Z)Z

    .line 1037
    :cond_2
    return-void
.end method

.method private isCarrierOtaSpNum(Ljava/lang/String;)Z
    .locals 12
    .parameter "dialStr"

    .prologue
    const/4 v11, -0x1

    const/4 v9, 0x0

    const-string v10, "CDMA"

    .line 1383
    const/4 v2, 0x0

    .line 1384
    .local v2, isOtaSpNum:Z
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result v6

    .line 1385
    .local v6, sysSelCodeInt:I
    if-ne v6, v11, :cond_0

    move v3, v2

    .line 1428
    .end local v2           #isOtaSpNum:Z
    .local v3, isOtaSpNum:I
    :goto_0
    return v3

    .line 1389
    .end local v3           #isOtaSpNum:I
    .restart local v2       #isOtaSpNum:Z
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1390
    sget-object v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1392
    .local v4, m:Ljava/util/regex/Matcher;
    const-string v7, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCarrierOtaSpNum,schema"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1396
    sget-object v7, Lcom/android/internal/telephony/cdma/CDMAPhone;->pOtaSpNumSchema:Ljava/util/regex/Pattern;

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v5

    .line 1398
    .local v5, sch:[Ljava/lang/String;
    aget-object v7, v5, v9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    aget-object v7, v5, v9

    const-string v8, "SELC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1399
    if-eq v6, v11, :cond_1

    .line 1400
    invoke-direct {p0, v6, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->checkOtaSpNumBasedOnSysSelCode(I[Ljava/lang/String;)Z

    move-result v2

    .end local v4           #m:Ljava/util/regex/Matcher;
    .end local v5           #sch:[Ljava/lang/String;
    :goto_1
    move v3, v2

    .line 1428
    .restart local v3       #isOtaSpNum:I
    goto :goto_0

    .line 1403
    .end local v3           #isOtaSpNum:I
    .restart local v4       #m:Ljava/util/regex/Matcher;
    .restart local v5       #sch:[Ljava/lang/String;
    :cond_1
    const-string v7, "CDMA"

    const-string v7, "isCarrierOtaSpNum,sysSelCodeInt is invalid"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1406
    :cond_2
    aget-object v7, v5, v9

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    aget-object v7, v5, v9

    const-string v8, "FC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1407
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1408
    .local v1, fcLen:I
    const/4 v7, 0x2

    aget-object v0, v5, v7

    .line 1409
    .local v0, fc:Ljava/lang/String;
    invoke-virtual {p1, v9, v0, v9, v1}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1410
    const/4 v2, 0x1

    goto :goto_1

    .line 1412
    :cond_3
    const-string v7, "CDMA"

    const-string v7, "isCarrierOtaSpNum,not otasp number"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1416
    .end local v0           #fc:Ljava/lang/String;
    .end local v1           #fcLen:I
    :cond_4
    const-string v7, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCarrierOtaSpNum,ota schema not supported"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v5, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1421
    .end local v5           #sch:[Ljava/lang/String;
    :cond_5
    const-string v7, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isCarrierOtaSpNum,ota schema pattern not right"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCarrierOtaSpNumSchema:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1426
    .end local v4           #m:Ljava/util/regex/Matcher;
    :cond_6
    const-string v7, "CDMA"

    const-string v7, "isCarrierOtaSpNum,ota schema pattern empty"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private isIs683OtaSpDialStr(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialStr"

    .prologue
    .line 1282
    const/4 v1, 0x0

    .line 1283
    .local v1, isOtaspDialString:Z
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 1285
    .local v0, dialStrLen:I
    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 1286
    const-string v3, "*228"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1287
    const/4 v1, 0x1

    .line 1306
    :cond_0
    :goto_0
    return v1

    .line 1290
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->extractSelCodeFromOtaSpNum(Ljava/lang/String;)I

    move-result v2

    .line 1291
    .local v2, sysSelCodeInt:I
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 1300
    :pswitch_0
    const/4 v1, 0x1

    .line 1301
    goto :goto_0

    .line 1291
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setIsoCountryProperty(Ljava/lang/String;)V
    .locals 7
    .parameter "operatorNumeric"

    .prologue
    const-string v6, "gsm.sim.operator.iso-country"

    const-string v5, "countryCodeForMcc error"

    const-string v4, "CDMA"

    .line 1493
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1494
    const-string v2, "gsm.sim.operator.iso-country"

    const-string v2, ""

    invoke-virtual {p0, v6, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    :goto_0
    return-void

    .line 1496
    :cond_0
    const-string v1, ""

    .line 1498
    .local v1, iso:Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 1506
    :goto_1
    const-string v2, "gsm.sim.operator.iso-country"

    invoke-virtual {p0, v6, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1500
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1501
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countryCodeForMcc error"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1502
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1503
    .local v0, ex:Ljava/lang/StringIndexOutOfBoundsException;
    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "countryCodeForMcc error"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 1482
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1483
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1484
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "vm_number_key_cdma"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1485
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1486
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->acceptCall()V

    .line 407
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1241
    const-string v0, "CDMA"

    const-string v1, "[CDMAPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1243
    return-void
.end method

.method public canConference()Z
    .locals 2

    .prologue
    .line 472
    const-string v0, "CDMA"

    const-string v1, "canConference: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    const/4 v0, 0x0

    return v0
.end method

.method public canTransfer()Z
    .locals 2

    .prologue
    .line 283
    const-string v0, "CDMA"

    const-string v1, "canTransfer: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 2
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "onComplete"

    .prologue
    .line 873
    const-string v0, "CDMA"

    const-string v1, "changeBarringPassword: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 2
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "newPwdAgain"
    .parameter "onComplete"

    .prologue
    .line 881
    const-string v0, "CDMA"

    const-string v1, "changeBarringPassword: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->clearDisconnected()V

    .line 314
    return-void
.end method

.method public conference()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 301
    const-string v0, "CDMA"

    const-string v1, "conference: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, newDialString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 355
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Sending UUS information NOT supported in CDMA!"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1539
    const/4 v0, 0x0

    return-object v0
.end method

.method public disableDataConnectivity()Z
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->disableLocationUpdates()V

    .line 721
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/RuimRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 221
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 222
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 223
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNVReady(Landroid/os/Handler;)V

    .line 224
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForNetworkAttach(Landroid/os/Handler;)V

    .line 225
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 227
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 230
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->dispose()V

    .line 231
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->dispose()V

    .line 232
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dispose()V

    .line 233
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSMS:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispose()V

    .line 234
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccFileHandler;->dispose()V

    .line 235
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->dispose()V

    .line 236
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/RuimCard;->dispose()V

    .line 237
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->dispose()V

    .line 238
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;->dispose()V

    .line 239
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 240
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/EriManager;->dispose()V

    .line 241
    monitor-exit v0

    .line 242
    return-void

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableDataConnectivity()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 791
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    if-eqz v1, :cond_0

    .line 792
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 793
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    move v1, v3

    .line 799
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return v1

    .line 795
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->isInEmergencyCall()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 797
    goto :goto_0

    .line 799
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataEnabled(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredVoicePrivacy(ZLandroid/os/Message;)V

    .line 306
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->enableLocationUpdates()V

    .line 717
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1a

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 990
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 2

    .prologue
    .line 898
    const-string v0, "CDMA"

    const-string v1, "explicitCallTransfer: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v1, "CDMA"

    .line 259
    const-string v0, "CDMA"

    const-string v0, "CDMAPhone finalized"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "CDMA"

    const-string v0, "UNEXPECTED; mWakeLock is held when finalizing."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 264
    :cond_0
    return-void
.end method

.method public getActiveDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 1

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 708
    const-string v0, "CDMA"

    const-string v1, "getAvailableNetworks: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->backgroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getCBEnableConfig()Z
    .locals 2

    .prologue
    .line 1562
    const-string v0, "CDMA"

    const-string v1, "CDMAgetCBEnableConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    const/4 v0, 0x0

    return v0
.end method

.method public getCSPavailable()Z
    .locals 1

    .prologue
    .line 863
    const/4 v0, 0x0

    return v0
.end method

.method public getCSPtable()Lcom/android/internal/telephony/gsm/simCSPtable;
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "commandInterfacecbFlavour"
    .parameter "onComplete"

    .prologue
    .line 830
    const-string v0, "CDMA"

    const-string v1, "getCallBarringOption: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 2

    .prologue
    .line 893
    const-string v0, "CDMA"

    const-string v1, "getCallForwardingIndicator: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 808
    const-string v0, "CDMA"

    const-string v1, "getCallForwardingOption: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 437
    return-void
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1454
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1464
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1472
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v1

    .line 1473
    .local v1, roamInd:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaDefaultRoamingIndicator()I

    move-result v0

    .line 1474
    .local v0, defRoamInd:I
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriText(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1251
    const-string v0, "CDMA"

    const-string v1, "[CDMAPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1253
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->cellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    return-object v0
.end method

.method public getCurrentDataConnectionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getAllDataConnections()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    .line 317
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 319
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentCdmaDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 321
    sget-object v1, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 339
    :cond_0
    :goto_0
    return-object v0

    .line 323
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 324
    goto :goto_0

    .line 327
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 328
    goto :goto_0

    .line 331
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 332
    goto :goto_0

    .line 335
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    goto :goto_0

    .line 321
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 725
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;
    .locals 3

    .prologue
    .line 625
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 627
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    if-nez v1, :cond_0

    .line 631
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 661
    :goto_0
    return-object v0

    .line 632
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentCdmaDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 635
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 637
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cdma/CDMAPhone$2;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 640
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 641
    goto :goto_0

    .line 645
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v1

    if-nez v1, :cond_2

    .line 647
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->SUSPENDED:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 649
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    .line 651
    goto :goto_0

    .line 656
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataState;->CONNECTING:Lcom/android/internal/telephony/Phone$DataState;

    goto :goto_0

    .line 637
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getMeid()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, id:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "^0*$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    :cond_0
    const-string v1, "CDMA"

    const-string v2, "getDeviceId(): MEID is not initialized use ESN"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    .line 459
    :cond_1
    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 463
    const-string v0, "CDMA"

    const-string v1, "getDeviceSvn(): return 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v0, "0"

    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredVoicePrivacy(Landroid/os/Message;)V

    .line 310
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEsn:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->foregroundCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;
    .locals 1

    .prologue
    .line 1231
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->getRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    iget-object v0, v0, Lcom/android/internal/telephony/IccRecords;->iccid:Ljava/lang/String;

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 902
    const-string v0, "CDMA"

    const-string v1, "getLine1AlphaTag: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getMdnNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineId(Landroid/os/Message;)V
    .locals 0
    .parameter "response"

    .prologue
    .line 1550
    return-void
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getVoiceMessageCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMsisdnavailable()Z
    .locals 1

    .prologue
    .line 853
    const/4 v0, 0x0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 610
    if-eqz p1, :cond_0

    .line 611
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 613
    .local v0, ce:Lcom/android/internal/telephony/CommandException;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 614
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 616
    .end local v0           #ce:Lcom/android/internal/telephony/CommandException;
    :cond_0
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 888
    const-string v0, "CDMA"

    const-string v1, "getOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    const-string v0, "CDMA"

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1184
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x2

    return v0
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getRingingCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/cdma/CdmaCall;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->ringingCall:Lcom/android/internal/telephony/cdma/CdmaCall;

    return-object v0
.end method

.method public getSMSPavailable()Z
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/RuimRecords;->isAvailableSMSP:Z

    return v0
.end method

.method public getSMSavailable()Z
    .locals 1

    .prologue
    .line 1557
    const/4 v0, 0x1

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->ss:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getImsi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 776
    const-string v0, ""

    .line 780
    .local v0, ret:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 781
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mContext:Landroid/content/Context;

    const v2, 0x1040004

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 785
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 5

    .prologue
    const-string/jumbo v4, "vm_number_key_cdma"

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, number:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 750
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10d001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    const-string/jumbo v2, "vm_number_key_cdma"

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 756
    :goto_0
    return-object v0

    .line 754
    :cond_0
    const-string/jumbo v2, "vm_number_key_cdma"

    const-string v2, "*86"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVoiceMessageCount()I
    .locals 4

    .prologue
    .line 763
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->getVoiceMessageCount()I

    move-result v1

    .line 767
    .local v1, voicemailCount:I
    if-nez v1, :cond_0

    .line 768
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 769
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string/jumbo v2, "vm_count_key_cdma"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 771
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return v1
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 2
    .parameter "dialString"

    .prologue
    .line 382
    const-string v0, "CDMA"

    const-string/jumbo v1, "method handleInCallMmiCommands is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const-string v6, "CDMA"

    .line 1080
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1175
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1082
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x6

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 1084
    iget-object v4, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x15

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    goto :goto_0

    .line 1089
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1091
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1095
    const-string v4, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Baseband version: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const-string v5, "gsm.version.baseband"

    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v5, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1101
    .end local v1           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1103
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    .line 1106
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 1107
    .local v3, respId:[Ljava/lang/String;
    const/4 v4, 0x2

    aget-object v4, v3, v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEsn:Ljava/lang/String;

    .line 1108
    const/4 v4, 0x3

    aget-object v4, v3, v4

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mMeid:Ljava/lang/String;

    goto :goto_0

    .line 1113
    .end local v1           #ar:Landroid/os/AsyncResult;
    .end local v3           #respId:[Ljava/lang/String;
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleEnterEmergencyCallbackMode(Landroid/os/Message;)V

    goto :goto_0

    .line 1118
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->handleExitEmergencyCallbackMode(Landroid/os/Message;)V

    goto :goto_0

    .line 1123
    :pswitch_6
    const-string v4, "CDMA"

    const-string v4, "Event EVENT_RUIM_RECORDS_LOADED Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1128
    :pswitch_7
    const-string v4, "CDMA"

    const-string v4, "Event EVENT_RADIO_OFF_OR_NOT_AVAILABLE Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1133
    :pswitch_8
    const-string v4, "CDMA"

    const-string v4, "Event EVENT_RADIO_ON Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1138
    :pswitch_9
    const-string v4, "CDMA"

    const-string v4, "Event EVENT_SSN Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1143
    :pswitch_a
    const-string v4, "CDMA"

    const-string v4, "Event EVENT_REGISTERED_TO_NETWORK Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1148
    :pswitch_b
    const-string v4, "CDMA"

    const-string v4, "Event EVENT_NV_READY Received"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFile()V

    .line 1151
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1152
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1154
    const-string v4, "CDMA"

    const-string v4, "ERI read, notify registrants"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v4}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_0

    .line 1161
    :pswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 1162
    .restart local v1       #ar:Landroid/os/AsyncResult;
    const-class v4, Lcom/android/internal/telephony/IccException;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1163
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1164
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1166
    :cond_1
    iget-object v2, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    .line 1167
    .local v2, onComplete:Landroid/os/Message;
    if-eqz v2, :cond_0

    .line 1168
    iget-object v4, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1169
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1080
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_3
        :pswitch_6
        :pswitch_b
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialString"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v4, "CDMA"

    .line 505
    invoke-static {p1, p0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/android/internal/telephony/cdma/CdmaMmiCode;

    move-result-object v0

    .line 507
    .local v0, mmi:Lcom/android/internal/telephony/cdma/CdmaMmiCode;
    if-nez v0, :cond_0

    .line 508
    const-string v1, "CDMA"

    const-string v1, "Mmi is NULL!"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 517
    :goto_0
    return v1

    .line 510
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->isPukCommand()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 511
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 513
    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaMmiCode;->processCode()V

    .line 514
    const/4 v1, 0x1

    goto :goto_0

    .line 516
    :cond_1
    const-string v1, "CDMA"

    const-string v1, "Unrecognized mmi!"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 517
    goto :goto_0
.end method

.method handleTimerInEmergencyCallbackMode(I)V
    .locals 5
    .parameter "action"

    .prologue
    .line 1045
    packed-switch p1, :pswitch_data_0

    .line 1057
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTimerInEmergencyCallbackMode, unsupported action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :goto_0
    return-void

    .line 1047
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1048
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Ljava/lang/Boolean;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 1051
    :pswitch_1
    const-string/jumbo v2, "ro.cdma.ecmexittimer"

    const-wide/32 v3, 0x493e0

    invoke-static {v2, v3, v4}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1053
    .local v0, delayInMillis:J
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mExitEcmRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1054
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Ljava/lang/Boolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 1045
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initiateFakecall()V
    .locals 0

    .prologue
    .line 1545
    return-void
.end method

.method public isDataConnectivityPossible()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 521
    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$DataState;->DISCONNECTED:Lcom/android/internal/telephony/Phone$DataState;

    if-ne v1, v2, :cond_1

    move v0, v4

    .line 523
    .local v0, noData:Z
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    move v1, v4

    :goto_1
    return v1

    .end local v0           #noData:Z
    :cond_1
    move v0, v3

    .line 521
    goto :goto_0

    .restart local v0       #noData:Z
    :cond_2
    move v1, v3

    .line 523
    goto :goto_1
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getForegroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 388
    .local v1, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getBackgroundCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 389
    .local v0, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getRingingCall()Lcom/android/internal/telephony/cdma/CdmaCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/CdmaCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 391
    .local v2, ringingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 5
    .parameter "dialStr"

    .prologue
    .line 1440
    const/4 v1, 0x0

    .line 1441
    .local v1, isOtaSpNum:Z
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1442
    .local v0, dialableStr:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1443
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isIs683OtaSpDialStr(Ljava/lang/String;)Z

    move-result v1

    .line 1444
    if-nez v1, :cond_0

    .line 1445
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isCarrierOtaSpNum(Ljava/lang/String;)Z

    move-result v1

    .line 1448
    :cond_0
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOtaSpNumber "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    return v1
.end method

.method needsOtaServiceProvisioning()Z
    .locals 6

    .prologue
    const/4 v3, 0x6

    const/4 v4, 0x0

    const-string v5, "CDMA"

    .line 968
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, cdmaMin:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 971
    :cond_0
    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "needsOtaServiceProvisioning: illegal cdmaMin=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' assume provisioning needed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v1, 0x1

    .line 979
    .local v1, needsProvisioning:Z
    :goto_0
    const-string v2, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "needsOtaServiceProvisioning: ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    return v1

    .line 975
    .end local v1           #needsProvisioning:Z
    :cond_1
    const-string v2, "1111110111"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "000000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "test_cdma_setup"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    move v1, v2

    .restart local v1       #needsProvisioning:Z
    :goto_1
    goto :goto_0

    .end local v1           #needsProvisioning:Z
    :cond_3
    move v1, v4

    goto :goto_1
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "cn"

    .prologue
    .line 936
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 937
    return-void
.end method

.method notifyLocationChanged()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 928
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 932
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 933
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 911
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 919
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 920
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "ss"

    .prologue
    .line 923
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 924
    return-void
.end method

.method notifySignalStrength()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifySignalStrength(Lcom/android/internal/telephony/Phone;)V

    .line 345
    return-void
.end method

.method notifyUnknownConnection()V
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 941
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/cdma/CdmaMmiCode;)V
    .locals 3
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPendingMmis:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 542
    :cond_0
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 594
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCdmaOtaProvision(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 570
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1069
    return-void
.end method

.method public registerForEriFileLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1211
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1212
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1213
    return-void
.end method

.method public registerForNvLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1202
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1203
    .local v0, r:Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 1204
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 578
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 374
    const-string v0, "CDMA"

    const-string/jumbo v1, "method registerForSuppServiceNotification is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->rejectCall()V

    .line 412
    return-void
.end method

.method public removeReferences()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimPhoneBookInterfaceManager:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    .line 246
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimSmsInterfaceManager:Lcom/android/internal/telephony/cdma/RuimSmsInterfaceManager;

    .line 247
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSMS:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 248
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 249
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    .line 250
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    .line 251
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimCard:Lcom/android/internal/telephony/cdma/RuimCard;

    .line 252
    iput-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    .line 253
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    .line 254
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .line 255
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    .line 256
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/gsm/NetworkInfo;Landroid/os/Message;)V
    .locals 2
    .parameter "network"
    .parameter "response"

    .prologue
    .line 491
    const-string v0, "CDMA"

    const-string/jumbo v1, "selectNetworkManually: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    return-void
.end method

.method public selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "operatorNumeric"
    .parameter "operatorAlphaLong"
    .parameter "response"

    .prologue
    .line 497
    const-string v0, "CDMA"

    const-string/jumbo v1, "selectNetworkManually: not possible in CDMA Second Method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 5
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    .line 693
    const/4 v0, 0x1

    .line 694
    .local v0, check:Z
    const/4 v1, 0x0

    .local v1, itr:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 695
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 696
    const-string v2, "CDMA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendDtmf called with invalid character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v0, 0x0

    .line 702
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 703
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 705
    :cond_1
    return-void

    .line 694
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 669
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 670
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->state:Lcom/android/internal/telephony/Phone$State;

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method sendEmergencyCallbackModeChange()V
    .locals 3

    .prologue
    .line 945
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 946
    .local v0, intent:Landroid/content/Intent;
    const-string/jumbo v1, "phoneinECMState"

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsPhoneInEcmState:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 947
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 948
    const-string v1, "CDMA"

    const-string/jumbo v2, "sendEmergencyCallbackModeChange"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    return-void
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 2
    .parameter "ussdMessge"

    .prologue
    .line 665
    const-string v0, "CDMA"

    const-string/jumbo v1, "sendUssdResponse: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-void
.end method

.method public setCBMessage(ZCI[S)V
    .locals 2
    .parameter "cbEnable"
    .parameter "selectId"
    .parameter "idCount"
    .parameter "msgId"

    .prologue
    .line 1572
    const-string v0, "CDMA"

    const-string v1, "CDMAsetCBMessage"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    return-void
.end method

.method public setCSCCbConfig(Z)Z
    .locals 2
    .parameter "cbEnable"

    .prologue
    .line 1567
    const-string v0, "CDMA"

    const-string v1, "CDMAsetCSCCbConfig"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 2
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 846
    const-string v0, "CDMA"

    const-string/jumbo v1, "setCallBarringOption: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 2
    .parameter "cbAction"
    .parameter "commandInterfacecbFlavour"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 836
    const-string v0, "CDMA"

    const-string/jumbo v1, "setCallBarringOption: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFReason"
    .parameter "commandInterfaceCFAction"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "serviceClass"
    .parameter "onComplete"

    .prologue
    .line 823
    const-string v0, "CDMA"

    const-string/jumbo v1, "setCallForwardingOption: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    .line 816
    const-string v0, "CDMA"

    const-string/jumbo v1, "setCallForwardingOption: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 557
    const-string v0, "CDMA"

    const-string/jumbo v1, "method setCallWaiting is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 1261
    const-string v0, "CDMA"

    const-string v1, "[CDMAPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1263
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mDataConnection:Lcom/android/internal/telephony/DataConnectionTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->setDataOnRoamingEnabled(Z)V

    .line 566
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 545
    const-string v0, "CDMA"

    const-string/jumbo v1, "setLine1Number: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method

.method public setLineId(ILandroid/os/Message;)V
    .locals 0
    .parameter "line"
    .parameter "response"

    .prologue
    .line 1553
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->setMute(Z)V

    .line 293
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 397
    const-string v0, "CDMA"

    const-string/jumbo v1, "method setNetworkSelectionModeAutomatic is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 585
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    .line 586
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 501
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 502
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 2
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 712
    const-string v0, "CDMA"

    const-string/jumbo v1, "setOutgoingCallerIdDisplay: not possible in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->setRadioPower(Z)V

    .line 442
    return-void
.end method

.method public final setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "property"
    .parameter "value"

    .prologue
    .line 1224
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    const/4 v2, 0x0

    .line 739
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    .line 740
    const/16 v1, 0x14

    invoke-virtual {p0, v1, v2, v2, p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 741
    .local v0, resp:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/internal/telephony/cdma/RuimRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 742
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 680
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    :goto_0
    return-void

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 690
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 417
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 598
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCdmaOtaProvision(Landroid/os/Handler;)V

    .line 574
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1073
    return-void
.end method

.method public unregisterForEriFileLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEriFileLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1217
    return-void
.end method

.method public unregisterForNvLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mNvLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1208
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 582
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 2
    .parameter "h"

    .prologue
    .line 401
    const-string v0, "CDMA"

    const-string/jumbo v1, "method unregisterForSuppServiceNotification is NOT supported in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 590
    return-void
.end method

.method updateCurrentCarrierInProvider(Ljava/lang/String;)Z
    .locals 5
    .parameter "operatorNumeric"

    .prologue
    .line 1517
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1519
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "current"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1520
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1521
    .local v1, map:Landroid/content/ContentValues;
    const-string/jumbo v3, "numeric"

    invoke-virtual {v1, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1525
    invoke-static {p0, p1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1527
    const/4 v3, 0x1

    .line 1532
    .end local v1           #map:Landroid/content/ContentValues;
    .end local v2           #uri:Landroid/net/Uri;
    :goto_0
    return v3

    .line 1528
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1529
    .local v0, e:Landroid/database/SQLException;
    const-string v3, "CDMA"

    const-string v4, "Can\'t store current operator"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1532
    .end local v0           #e:Landroid/database/SQLException;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method updateMessageWaitingIndicator(I)V
    .locals 2
    .parameter "mwi"

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/cdma/RuimRecords;->setVoiceMessageWaiting(II)V

    .line 961
    return-void
.end method

.method updateMessageWaitingIndicator(Z)V
    .locals 3
    .parameter "mwi"

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mRuimRecords:Lcom/android/internal/telephony/cdma/RuimRecords;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->setVoiceMessageWaiting(II)V

    .line 955
    return-void

    .line 954
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->enableSingleLocationUpdate()V

    .line 562
    return-void
.end method
