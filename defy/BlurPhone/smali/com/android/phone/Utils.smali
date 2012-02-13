.class public Lcom/android/phone/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Utils"

.field static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static sDefaultPhoto:Landroid/graphics/Bitmap;

.field private static sPhotoContext:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;

.field private static sUnknownPhoto:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 42
    sput-object v0, Lcom/android/phone/Utils;->sDefaultPhoto:Landroid/graphics/Bitmap;

    .line 43
    sput-object v0, Lcom/android/phone/Utils;->sUnknownPhoto:Landroid/graphics/Bitmap;

    .line 44
    sput-object v0, Lcom/android/phone/Utils;->sPhotoContext:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;

    .line 76
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "label"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/Utils;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-static {p0}, Lcom/android/phone/Utils;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static addToContacts(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "number"

    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, msg:Ljava/lang/String;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01b1

    new-instance v3, Lcom/android/phone/Utils$2;

    invoke-direct {v3, p1, p0}, Lcom/android/phone/Utils$2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b01b2

    new-instance v3, Lcom/android/phone/Utils$1;

    invoke-direct {v3, p1, p0}, Lcom/android/phone/Utils$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 208
    return-void
.end method

.method public static checkIPPrefix(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const-string v10, "mcc_mnc"

    const-string v9, "Utils"

    .line 273
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 274
    .local v6, teleMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    .line 275
    .local v5, simState:I
    const/4 v7, 0x5

    if-eq v5, v7, :cond_1

    .line 276
    const-string v7, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIPPrefix() > SIM state("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") is not ready!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, curMccMnc:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 281
    const-string v7, "Utils"

    const-string v7, "checkIPPrefix() > curMccMnc = null"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    :cond_2
    const-string v7, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIPPrefix() > curMccMnc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string v7, "IP_PREFIX"

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 286
    .local v4, sharedData:Landroid/content/SharedPreferences;
    const-string v7, "mcc_mnc"

    const/4 v7, 0x0

    invoke-interface {v4, v10, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, preMccMnc:Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 288
    :cond_3
    invoke-static {p0}, Lcom/android/phone/DatabaseConfigMgr;->instance(Landroid/content/Context;)Lcom/android/phone/DatabaseConfigMgr;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/phone/DatabaseConfigMgr;->getIPPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 289
    .local v2, ipPrefix:Ljava/lang/String;
    if-nez v2, :cond_4

    .line 290
    const-string v7, "Utils"

    const-string v7, "Failed to get ip_prefix!"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 293
    :cond_4
    const-string v7, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIPPrefix() > set ip_prefix = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mcc_mnc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 295
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "mcc_mnc"

    invoke-interface {v1, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 296
    const-string v7, "ip_prefix"

    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 297
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method public static checkIntRoamCallBackPrefix(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const-string v10, "mcc_mnc"

    const-string v9, "Utils"

    .line 221
    const-string v7, "phone"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    .line 222
    .local v6, teleMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    .line 223
    .local v5, simState:I
    const/4 v7, 0x5

    if-eq v5, v7, :cond_1

    .line 224
    const-string v7, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIntRoamCallBackPrefix() > SIM state("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") is not ready!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, curMccMnc:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 229
    const-string v7, "Utils"

    const-string v7, "checkIntRoamCallBackPrefix() > curMccMnc = null"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_2
    const-string v7, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIntRoamCallBackPrefix() > curMccMnc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v7, "INTROAMCB_PREFIX"

    const/4 v8, 0x1

    invoke-virtual {p0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 234
    .local v4, sharedData:Landroid/content/SharedPreferences;
    const-string v7, "mcc_mnc"

    const/4 v7, 0x0

    invoke-interface {v4, v10, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, preMccMnc:Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 236
    :cond_3
    invoke-static {p0}, Lcom/android/phone/DatabaseConfigMgr;->instance(Landroid/content/Context;)Lcom/android/phone/DatabaseConfigMgr;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/phone/DatabaseConfigMgr;->getIntlRoamCallbackPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, intRoamCallbackPrefix:Ljava/lang/String;
    if-nez v2, :cond_4

    .line 238
    const-string v7, "Utils"

    const-string v7, "Failed to get introamcb_prefix!"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 241
    :cond_4
    const-string v7, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkIntRoamCallBackPrefix() > set introamcb_prefix = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mcc_mnc = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 243
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "mcc_mnc"

    invoke-interface {v1, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 244
    const-string v7, "introamcb_prefix"

    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 245
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method public static getDefaultContactPhoto()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 47
    const-class v0, Lcom/android/phone/Utils;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/android/phone/Utils;->sDefaultPhoto:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 49
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3020251

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/phone/Utils;->sDefaultPhoto:Landroid/graphics/Bitmap;

    .line 52
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    sget-object v0, Lcom/android/phone/Utils;->sDefaultPhoto:Landroid/graphics/Bitmap;

    return-object v0

    .line 52
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getDefaultIPPrefix(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const-string v6, "Utils"

    .line 302
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 303
    .local v3, teleMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 304
    .local v2, simState:I
    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    .line 305
    const-string v4, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultIPPrefix() > SIM state("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not ready!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 319
    :goto_0
    return-object v4

    .line 308
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, curMccMnc:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 310
    const-string v4, "Utils"

    const-string v4, "getDefaultIPPrefix() > curMccMnc = null"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 311
    goto :goto_0

    .line 313
    :cond_1
    const-string v4, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultIPPrefix() > curMccMnc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-static {p0}, Lcom/android/phone/DatabaseConfigMgr;->instance(Landroid/content/Context;)Lcom/android/phone/DatabaseConfigMgr;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/phone/DatabaseConfigMgr;->getIPPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 315
    .local v1, ipPrefix:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 316
    const-string v4, "Utils"

    const-string v4, "Failed to get ip_prefix!"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 317
    goto :goto_0

    :cond_2
    move-object v4, v1

    .line 319
    goto :goto_0
.end method

.method public static getIdentityId(Landroid/content/Context;Ljava/lang/String;)J
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v3, 0x0

    .line 121
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 122
    :cond_0
    const-wide/16 v0, 0x0

    .line 136
    :goto_0
    return-wide v0

    .line 124
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/phone/Utils;->PHONES_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 129
    .local v8, phonesCursor:Landroid/database/Cursor;
    const-wide/16 v6, 0x0

    .line 130
    .local v6, personIdentity:J
    if-eqz v8, :cond_3

    .line 131
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 134
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-wide v0, v6

    .line 136
    goto :goto_0
.end method

.method public static getIntRoamCallBackPrefix(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const-string v6, "Utils"

    .line 250
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 251
    .local v3, teleMgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 252
    .local v2, simState:I
    const/4 v4, 0x5

    if-eq v2, v4, :cond_0

    .line 253
    const-string v4, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDefaultIPPrefix() > SIM state("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") is not ready!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 267
    :goto_0
    return-object v4

    .line 256
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, curMccMnc:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 258
    const-string v4, "Utils"

    const-string v4, "getIntRoamCallBackPrefix() > curMccMnc = null"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 259
    goto :goto_0

    .line 261
    :cond_1
    const-string v4, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIntRoamCallBackPrefix() > curMccMnc = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-static {p0}, Lcom/android/phone/DatabaseConfigMgr;->instance(Landroid/content/Context;)Lcom/android/phone/DatabaseConfigMgr;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/phone/DatabaseConfigMgr;->getIntlRoamCallbackPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, intRoamCallbackPrefix:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 264
    const-string v4, "Utils"

    const-string v4, "Failed to get intRoamCallbackPrefix!"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    .line 265
    goto :goto_0

    :cond_2
    move-object v4, v1

    .line 267
    goto :goto_0
.end method

.method public static getPhotoContext()Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;
    .locals 2

    .prologue
    .line 67
    const-class v0, Lcom/android/phone/Utils;

    monitor-enter v0

    .line 68
    :try_start_0
    sget-object v1, Lcom/android/phone/Utils;->sPhotoContext:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;

    if-nez v1, :cond_0

    .line 69
    new-instance v1, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;

    invoke-direct {v1}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;-><init>()V

    sput-object v1, Lcom/android/phone/Utils;->sPhotoContext:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;

    .line 70
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    sget-object v0, Lcom/android/phone/Utils;->sPhotoContext:Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;

    return-object v0

    .line 70
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getUnknownContactPhoto()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 57
    const-class v0, Lcom/android/phone/Utils;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/android/phone/Utils;->sUnknownPhoto:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 59
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3020286

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    sput-object v1, Lcom/android/phone/Utils;->sUnknownPhoto:Landroid/graphics/Bitmap;

    .line 62
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    sget-object v0, Lcom/android/phone/Utils;->sUnknownPhoto:Landroid/graphics/Bitmap;

    return-object v0

    .line 62
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getVoiceMailNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 211
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 212
    .local v0, app:Lcom/android/phone/PhoneApp;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    .line 215
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 327
    const-string v0, "Utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Utils] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return-void
.end method

.method public static setCallerImage(Landroid/content/Context;JLandroid/widget/ImageView;II)V
    .locals 7
    .parameter "ctx"
    .parameter "identityId"
    .parameter "view"
    .parameter "defaultImageResId"
    .parameter "unknownImageResId"

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/android/phone/Utils;->getPhotoContext()Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;

    move-result-object v3

    sget-object v4, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->PHOTO_SIZE_50PX:Landroid/graphics/Rect;

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v5, p4

    invoke-static/range {v0 .. v6}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadContactPhoto(Landroid/content/Context;JLcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static setCallerImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;II)V
    .locals 7
    .parameter "ctx"
    .parameter "number"
    .parameter "view"
    .parameter "defaultImageResId"
    .parameter "unknownImageResId"

    .prologue
    .line 89
    invoke-static {p0, p1}, Lcom/android/phone/Utils;->getIdentityId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v1

    .line 90
    .local v1, identityId:J
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    .line 91
    invoke-static {}, Lcom/android/phone/Utils;->getPhotoContext()Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;

    move-result-object v3

    sget-object v4, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->PHOTO_SIZE_50PX:Landroid/graphics/Rect;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, p3

    invoke-static/range {v0 .. v6}, Lcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm;->loadContactPhoto(Landroid/content/Context;JLcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$PhotoContext;Landroid/graphics/Rect;ILcom/motorola/blur/provider/contactsExtensions/BlurContactsExtensions$PhotoAlgorithm$ImageDecoder;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public static setupKeypad(Landroid/app/Activity;)V
    .locals 14
    .parameter "activity"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x4

    .line 145
    const/16 v7, 0xc

    new-array v4, v7, [[I

    new-array v7, v9, [I

    fill-array-data v7, :array_0

    aput-object v7, v4, v11

    new-array v7, v9, [I

    fill-array-data v7, :array_1

    aput-object v7, v4, v10

    new-array v7, v9, [I

    fill-array-data v7, :array_2

    aput-object v7, v4, v13

    new-array v7, v9, [I

    fill-array-data v7, :array_3

    aput-object v7, v4, v12

    new-array v7, v9, [I

    fill-array-data v7, :array_4

    aput-object v7, v4, v9

    const/4 v7, 0x5

    new-array v8, v9, [I

    fill-array-data v8, :array_5

    aput-object v8, v4, v7

    const/4 v7, 0x6

    new-array v8, v9, [I

    fill-array-data v8, :array_6

    aput-object v8, v4, v7

    const/4 v7, 0x7

    new-array v8, v9, [I

    fill-array-data v8, :array_7

    aput-object v8, v4, v7

    const/16 v7, 0x8

    new-array v8, v9, [I

    fill-array-data v8, :array_8

    aput-object v8, v4, v7

    const/16 v7, 0x9

    new-array v8, v9, [I

    fill-array-data v8, :array_9

    aput-object v8, v4, v7

    const/16 v7, 0xa

    new-array v8, v9, [I

    fill-array-data v8, :array_a

    aput-object v8, v4, v7

    const/16 v7, 0xb

    new-array v8, v9, [I

    fill-array-data v8, :array_b

    aput-object v8, v4, v7

    .line 163
    .local v4, keydata:[[I
    move-object v1, v4

    .local v1, arr$:[[I
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_2

    aget-object v6, v1, v2

    .line 164
    .local v6, r:[I
    aget v7, v6, v11

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 165
    .local v3, keyView:Landroid/view/View;
    invoke-virtual {v3, v11}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 166
    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    move-object v7, v0

    invoke-virtual {v3, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const v7, 0x7f070038

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aget v8, v6, v13

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 168
    aget v7, v6, v10

    if-nez v7, :cond_1

    .line 169
    const v7, 0x7f070039

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aget v8, v6, v12

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 163
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_1
    aget v7, v6, v10

    if-ne v7, v10, :cond_0

    .line 171
    const v7, 0x7f07003a

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    aget v8, v6, v12

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 174
    .end local v3           #keyView:Landroid/view/View;
    .end local v6           #r:[I
    :cond_2
    const v7, 0x7f0700a1

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnLongClickListener;

    move-object v7, v0

    invoke-virtual {v8, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 175
    const v7, 0x7f070091

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    move-object v7, v0

    invoke-virtual {v8, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    const v7, 0x7f070098

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnLongClickListener;

    move-object v7, v0

    invoke-virtual {v8, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 177
    const v7, 0x7f070099

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnLongClickListener;

    move-object v7, v0

    invoke-virtual {v8, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 178
    const v7, 0x7f07009a

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnLongClickListener;

    move-object v7, v0

    invoke-virtual {v8, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 179
    const v7, 0x7f07009b

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnLongClickListener;

    move-object v7, v0

    invoke-virtual {v8, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 180
    const v7, 0x7f07009c

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnLongClickListener;

    move-object v7, v0

    invoke-virtual {v8, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 181
    const v7, 0x7f07009d

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnLongClickListener;

    move-object v7, v0

    invoke-virtual {v8, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 182
    const v7, 0x7f07009e

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnLongClickListener;

    move-object v7, v0

    invoke-virtual {v8, v7}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 183
    const v7, 0x7f07009f

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast p0, Landroid/view/View$OnLongClickListener;

    .end local p0
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 184
    return-void

    .line 145
    :array_0
    .array-data 0x4
        0x97t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x3et 0x3t 0xbt 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x98t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x3ft 0x3t 0xbt 0x7ft
        0x4at 0x3t 0xbt 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x99t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x3t 0xbt 0x7ft
        0x4bt 0x3t 0xbt 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x9at 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x41t 0x3t 0xbt 0x7ft
        0x4ct 0x3t 0xbt 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x9bt 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x42t 0x3t 0xbt 0x7ft
        0x4dt 0x3t 0xbt 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x9ct 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x43t 0x3t 0xbt 0x7ft
        0x4et 0x3t 0xbt 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x9dt 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x44t 0x3t 0xbt 0x7ft
        0x4ft 0x3t 0xbt 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x9et 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x45t 0x3t 0xbt 0x7ft
        0x50t 0x3t 0xbt 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x9ft 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x46t 0x3t 0xbt 0x7ft
        0x51t 0x3t 0xbt 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0xa0t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x47t 0x3t 0xbt 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0xa1t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x48t 0x3t 0xbt 0x7ft
        0x52t 0x3t 0xbt 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0xa2t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x49t 0x3t 0xbt 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
