.class public Lcom/android/phone/OutgoingCallBroadcaster;
.super Landroid/app/Activity;
.source "OutgoingCallBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DLG_OPEN_FLIP:I = 0x0

.field public static final EXTRA_ALREADY_CALLED:Ljava/lang/String; = "android.phone.extra.ALREADY_CALLED"

.field public static final EXTRA_NEW_CALL_INTENT:Ljava/lang/String; = "android.phone.extra.NEW_CALL_INTENT"

.field public static final EXTRA_ORIGINAL_URI:Ljava/lang/String; = "android.phone.extra.ORIGINAL_URI"

.field public static final EXTRA_SIP_PHONE_URI:Ljava/lang/String; = "android.phone.extra.SIP_PHONE_URI"

.field private static final MULTI_PARTY_CALL:Ljava/lang/String; = "multi_party_call"

.field private static final MULTI_PARTY_LIST:Ljava/lang/String; = "Multi_party_caller_list"

.field private static final PERMISSION:Ljava/lang/String; = "android.permission.PROCESS_OUTGOING_CALLS"

.field private static final TAG:Ljava/lang/String; = "OutgoingCallBroadcaster"


# instance fields
.field private mFireWalldialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 110
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/OutgoingCallBroadcaster;Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionsHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private startSipCallOptionsHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 9
    .parameter "context"
    .parameter "intent"
    .parameter "uri"
    .parameter "number"

    .prologue
    .line 186
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL"

    invoke-direct {v3, v6, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 188
    .local v3, newIntent:Landroid/content/Intent;
    const-string v6, "isLockMode"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 189
    const-string v6, "isLockMode"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    :cond_0
    const-string v6, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v3, v6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->isAdFtrOn()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 195
    const-string v6, "called_by"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 196
    const-string v6, "called_by"

    const-string v7, "called_by"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    :cond_1
    const-string v6, "multi_party_call"

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 202
    const-string v6, "multi_party_call"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    :cond_2
    const-string v6, "Multi_party_caller_list"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 206
    const-string v6, "Multi_party_caller_list"

    const-string v7, "Multi_party_caller_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 211
    :cond_3
    invoke-static {p2, v3}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 213
    const-class v6, Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 214
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/phone/PhoneApp;->mIsSipSupported:Z

    if-eqz v6, :cond_5

    .line 216
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.phone.extra.NEW_CALL_INTENT"

    invoke-direct {v5, v6, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 217
    .local v5, selectPhoneIntent:Landroid/content/Intent;
    const-class v6, Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v5, p1, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 218
    const-string v6, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    const/high16 v6, 0x1000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 220
    sget-boolean v6, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "OutgoingCallBroadcaster"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "startSipCallOptionsHandler(): calling startActivity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_4
    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 245
    .end local v5           #selectPhoneIntent:Landroid/content/Intent;
    :goto_0
    const-string v6, "Calling_Kpi_Debug"

    const-string v7, "OutgoingCallBroadcaster exit"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 225
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 226
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-boolean v6, Lcom/android/phone/PhoneApp;->FTR_33076_IPCALL:Z

    if-eqz v6, :cond_6

    .line 227
    const-string v6, "ip_prefix"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, ip_prefix:Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 229
    const-string v6, "ip_prefix"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    .end local v2           #ip_prefix:Ljava/lang/String;
    :cond_6
    const-string v6, "introamcb_prefix"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, intRoamCallbackPrefix:Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 237
    const-string v6, "introamcb_prefix"

    invoke-virtual {v3, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    const-string v6, "orig_number"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, origNumber:Ljava/lang/String;
    const-string v6, "orig_number"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    .end local v4           #origNumber:Ljava/lang/String;
    :cond_7
    invoke-virtual {p1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 28
    .parameter "icicle"

    .prologue
    .line 251
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 255
    const/4 v5, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getIntent()Landroid/content/Intent;

    move-result-object v20

    .line 261
    .local v20, intent:Landroid/content/Intent;
    const-string v5, "Calling_Kpi_Debug"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OutgoingCallBroadcaster onCreate: Got intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 265
    .local v13, action:Ljava/lang/String;
    const-string v5, "android.intent.extra.PHONE_NUMBER"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 266
    .local v11, number:Ljava/lang/String;
    if-nez v11, :cond_0

    .line 267
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 271
    :cond_0
    if-eqz v11, :cond_1

    .line 272
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 273
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 274
    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 277
    :cond_1
    if-eqz v11, :cond_6

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, 0x1

    move/from16 v18, v5

    .line 282
    .local v18, emergencyNumber:Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 286
    const-string v5, "android.intent.action.CALL"

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 287
    const-string v5, "OutgoingCallBroadcaster"

    const-string v6, "Attempt to deliver non-CALL action; forcing to CALL"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-string v5, "android.intent.action.CALL"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    :cond_2
    const-string v5, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 295
    if-eqz v18, :cond_7

    const-string v5, "android.intent.action.CALL_EMERGENCY"

    move-object v13, v5

    .line 298
    :goto_2
    sget-boolean v5, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v5, :cond_3

    const-string v5, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- updating action from CALL_PRIVILEGED to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :cond_3
    move-object/from16 v0, v20

    move-object v1, v13

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    :cond_4
    const-string v5, "android.intent.action.CALL"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 303
    if-eqz v18, :cond_8

    .line 304
    const-string v5, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot call emergency number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with CALL Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 316
    .local v21, invokeFrameworkDialer:Landroid/content/Intent;
    const-string v5, "com.android.contacts"

    const-string v6, "com.android.contacts.DialtactsActivity"

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v5, "android.intent.action.DIAL"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    .line 459
    .end local v21           #invokeFrameworkDialer:Landroid/content/Intent;
    :cond_5
    :goto_3
    return-void

    .line 277
    .end local v18           #emergencyNumber:Z
    :cond_6
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_1

    .line 295
    .restart local v18       #emergencyNumber:Z
    :cond_7
    const-string v5, "android.intent.action.CALL"

    move-object v13, v5

    goto/16 :goto_2

    .line 325
    :cond_8
    const/16 v16, 0x0

    .line 354
    .local v16, callNow:Z
    :goto_4
    const/16 v17, 0x1

    .line 356
    .local v17, continueCalling:Z
    sget-boolean v5, Lcom/android/phone/PhoneApp;->mIsRotator:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 357
    const/16 v23, 0x1

    .line 358
    .local v23, isEarPieceMode:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/media/AudioManager;

    .line 359
    .local v15, audioManager:Landroid/media/AudioManager;
    if-eqz v15, :cond_a

    .line 360
    invoke-virtual {v15}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v15}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v15}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v15}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isBluetoothHeadsetConnected()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 363
    :cond_9
    const/16 v23, 0x0

    .line 370
    :cond_a
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_13

    const/4 v5, 0x1

    move/from16 v24, v5

    .line 373
    .local v24, isFlipOpen:Z
    :goto_6
    if-nez v24, :cond_b

    if-eqz v23, :cond_b

    .line 374
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->showDialog(I)V

    .line 375
    const/16 v17, 0x0

    .line 380
    .end local v15           #audioManager:Landroid/media/AudioManager;
    .end local v23           #isEarPieceMode:Z
    .end local v24           #isFlipOpen:Z
    :cond_b
    const/4 v5, 0x1

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_5

    .line 381
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 386
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v16, 0x1

    .line 388
    :cond_c
    if-eqz v16, :cond_d

    .line 389
    const-class v5, Lcom/android/phone/InCallScreen;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 390
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    .line 402
    :cond_d
    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v27

    .line 403
    .local v27, uri:Landroid/net/Uri;
    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v26

    .line 404
    .local v26, scheme:Ljava/lang/String;
    const-string v5, "sip"

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_e

    invoke-static {v11}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 405
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v27

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionsHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_3

    .line 326
    .end local v16           #callNow:Z
    .end local v17           #continueCalling:Z
    .end local v26           #scheme:Ljava/lang/String;
    .end local v27           #uri:Landroid/net/Uri;
    :cond_f
    const-string v5, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 332
    if-nez v18, :cond_10

    .line 333
    const-string v5, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot call non-emergency number "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with EMERGENCY_CALL Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_3

    .line 338
    :cond_10
    const/16 v16, 0x1

    .restart local v16       #callNow:Z
    goto/16 :goto_4

    .line 340
    .end local v16           #callNow:Z
    :cond_11
    const-string v5, "OutgoingCallBroadcaster"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled Intent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_3

    .line 366
    .restart local v15       #audioManager:Landroid/media/AudioManager;
    .restart local v16       #callNow:Z
    .restart local v17       #continueCalling:Z
    .restart local v23       #isEarPieceMode:Z
    :cond_12
    const/16 v23, 0x1

    goto/16 :goto_5

    .line 370
    :cond_13
    const/4 v5, 0x0

    move/from16 v24, v5

    goto/16 :goto_6

    .line 410
    .end local v15           #audioManager:Landroid/media/AudioManager;
    .end local v23           #isEarPieceMode:Z
    .restart local v26       #scheme:Ljava/lang/String;
    .restart local v27       #uri:Landroid/net/Uri;
    :cond_14
    new-instance v6, Landroid/content/Intent;

    const-string v5, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v6, broadcastIntent:Landroid/content/Intent;
    if-eqz v11, :cond_15

    .line 412
    const-string v5, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v6, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    :cond_15
    move-object/from16 v0, v20

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 415
    const-string v5, "android.phone.extra.ALREADY_CALLED"

    move-object v0, v6

    move-object v1, v5

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 416
    const-string v5, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual/range {v27 .. v27}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v5, "multi_party_call"

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 418
    const-string v5, "multi_party_call"

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    :cond_16
    const-string v5, "Multi_party_caller_list"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_17

    .line 421
    const-string v5, "Multi_party_caller_list"

    const-string v7, "Multi_party_caller_list"

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 424
    :cond_17
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->isAdFtrOn()Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v5, "called_by"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 426
    const-string v5, "called_by"

    const-string v7, "called_by"

    move-object/from16 v0, v20

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    :cond_18
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v14

    .line 433
    .local v14, app:Lcom/android/phone/PhoneApp;
    sget-boolean v5, Lcom/android/phone/PhoneApp;->FTR_33076_IPCALL:Z

    if-eqz v5, :cond_19

    .line 434
    const-string v5, "ip_prefix"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 435
    .local v22, ip_prefix:Ljava/lang/String;
    const-string v5, "FTR33076"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OutgoingCallBroadcaster>onCreate() ip_prefix = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    if-eqz v22, :cond_19

    .line 437
    const-string v5, "ip_prefix"

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    .end local v22           #ip_prefix:Ljava/lang/String;
    :cond_19
    const-string v5, "introamcb_prefix"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 444
    .local v19, intRoamCallbackPrefix:Ljava/lang/String;
    if-eqz v19, :cond_1a

    .line 445
    const-string v5, "introamcb_prefix"

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v5, "orig_number"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 447
    .local v25, origNumber:Ljava/lang/String;
    const-string v5, "orig_number"

    move-object v0, v6

    move-object v1, v5

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    .end local v25           #origNumber:Ljava/lang/String;
    :cond_1a
    const-string v5, "isLockMode"

    const/4 v7, 0x0

    move-object/from16 v0, v20

    move-object v1, v5

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 453
    const-string v5, "isLockMode"

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 455
    :cond_1b
    sget-boolean v5, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v5, :cond_1c

    const-string v5, "OutgoingCallBroadcaster"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Broadcasting intent: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_1c
    const-string v7, "android.permission.PROCESS_OUTGOING_CALLS"

    new-instance v8, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v12}, Lcom/android/phone/OutgoingCallBroadcaster;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_3

    .line 256
    .end local v6           #broadcastIntent:Landroid/content/Intent;
    .end local v11           #number:Ljava/lang/String;
    .end local v13           #action:Ljava/lang/String;
    .end local v14           #app:Lcom/android/phone/PhoneApp;
    .end local v16           #callNow:Z
    .end local v17           #continueCalling:Z
    .end local v18           #emergencyNumber:Z
    .end local v19           #intRoamCallbackPrefix:Ljava/lang/String;
    .end local v20           #intent:Landroid/content/Intent;
    .end local v26           #scheme:Ljava/lang/String;
    .end local v27           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v4, 0x0

    .line 81
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 82
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030043

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, dialogView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 85
    const-string v2, "OutgoingCallBroadcaster"

    const-string v3, "createDialog: could not find dialog view. Bailing out..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 91
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0134

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b016e

    new-instance v4, Lcom/android/phone/OutgoingCallBroadcaster$1;

    invoke-direct {v4, p0}, Lcom/android/phone/OutgoingCallBroadcaster$1;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0
.end method
