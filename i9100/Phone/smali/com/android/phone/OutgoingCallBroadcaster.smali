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
.field private static final DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 89
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 48
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
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionsHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method private startSipCallOptionsHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v7, 0x1000

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v4, "ipcall"

    const-string v3, "OutgoingCallBroadcaster"

    .line 174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 175
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v1, "ipcall"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    const-string v1, "ipcall"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 179
    const-string v2, "ipcall"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    :cond_0
    invoke-static {p2, v0}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 186
    const-string v1, "android.phone.extra.calltype"

    invoke-virtual {p2, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 217
    if-ne v1, v6, :cond_3

    .line 218
    const-string v1, "OutgoingCallBroadcaster"

    const-string v1, "Inside Voice call type"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const-class v1, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 227
    :cond_1
    :goto_0
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 228
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.phone.extra.NEW_CALL_INTENT"

    invoke-direct {v1, v2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 229
    const-class v2, Lcom/android/phone/SipCallOptionHandler;

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 230
    const-string v2, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 231
    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 232
    sget-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "OutgoingCallBroadcaster"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSipCallOptionsHandler(): calling startActivity: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_2
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 235
    return-void

    .line 221
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 222
    const-string v1, "OutgoingCallBroadcaster"

    const-string v1, "Inside Video call type"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const-class v1, Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 224
    const-string v1, "Videocalltype"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 514
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 515
    sget-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged: newConfig = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    const-string v10, "com.android.phone.videocall"

    const-string v9, "android.intent.action.CALL"

    const-string v7, "OutgoingCallBroadcaster"

    .line 239
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 242
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 244
    sget-boolean v2, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", icicle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    sget-boolean v2, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - getIntent() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1
    sget-boolean v2, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "OutgoingCallBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - configuration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_2
    if-eqz p1, :cond_3

    .line 261
    const-string v0, "OutgoingCallBroadcaster"

    const-string v0, "onCreate: non-null icicle!  Bailing out, not sending NEW_OUTGOING_CALL broadcast..."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :goto_0
    return-void

    .line 282
    :cond_3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v0, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 287
    if-eqz v2, :cond_20

    .line 297
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 298
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->convertKeypadLettersToDigits(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 299
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    .line 302
    :goto_1
    const-string v2, "videocall"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 304
    const-string v3, "android.intent.extra.VTCallDialer"

    invoke-virtual {v0, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 305
    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " - mVTCallDialer = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_4
    const-string v3, "OutgoingCallBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Value of callType from invoked application"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    if-eqz v6, :cond_9

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v11

    .line 313
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 317
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 318
    const-string v4, "OutgoingCallBroadcaster"

    const-string v4, "Attempt to deliver non-CALL action; forcing to CALL"

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    :cond_5
    const-string v4, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 326
    if-nez v2, :cond_a

    .line 339
    const-string v1, "OutgoingCallBroadcaster"

    const-string v1, "For VOICE CALL"

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    if-eqz v3, :cond_d

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    .line 343
    :goto_3
    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_6

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- updating action from CALL_PRIVILEGED to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_6
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    :cond_7
    :goto_4
    const-string v4, "android.intent.action.CALL"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 349
    if-eqz v3, :cond_e

    .line 350
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call emergency number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with CALL Intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 363
    const-string v2, "android.intent.action.DIAL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 366
    sget-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "OutgoingCallBroadcaster"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(): calling startActivity for Dialer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_9
    move v3, v8

    .line 308
    goto/16 :goto_2

    .line 331
    :cond_a
    const-string v1, "OutgoingCallBroadcaster"

    const-string v1, "For VIDEO CALL"

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    if-eqz v3, :cond_c

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    .line 335
    :goto_5
    sget-boolean v4, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v4, :cond_b

    const-string v4, "OutgoingCallBroadcaster"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- updating action from CALL_PRIVILEGED to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_b
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_4

    .line 332
    :cond_c
    const-string v1, "com.android.phone.videocall"

    move-object v1, v10

    goto :goto_5

    .line 340
    :cond_d
    const-string v1, "android.intent.action.CALL"

    move-object v1, v9

    goto/16 :goto_3

    .line 374
    :cond_e
    if-nez v2, :cond_10

    move-object v2, v1

    move v1, v8

    .line 436
    :goto_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 441
    if-eqz v6, :cond_f

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 442
    :cond_f
    const-string v1, "com.android.phone.extra.SEND_EMPTY_FLASH"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 443
    const-string v0, "OutgoingCallBroadcaster"

    const-string v0, "onCreate: SEND_EMPTY_FLASH..."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    invoke-static {}, Lcom/android/phone/PhoneApp;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->sendEmptyFlash(Lcom/android/internal/telephony/Phone;)V

    .line 445
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    .line 381
    :cond_10
    const-string v1, "OutgoingCallBroadcaster"

    const-string v1, "ACTION_CALL For B2B APP VIDEO CALL"

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v1, "com.android.phone.videocall"

    .line 383
    invoke-virtual {v0, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move v1, v8

    move-object v2, v10

    .line 384
    goto :goto_6

    .line 386
    :cond_11
    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 392
    if-nez v3, :cond_12

    .line 393
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call non-emergency number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with EMERGENCY_CALL Intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    :cond_12
    move-object v2, v1

    move v1, v11

    .line 398
    goto :goto_6

    .line 399
    :cond_13
    const-string v2, "com.android.phone.videocall"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 400
    const-string v2, "OutgoingCallBroadcaster"

    const-string v2, "Inside VIDEO CALL INTENT ACTION from Dialer for U1"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v1

    move v1, v8

    .line 401
    goto/16 :goto_6

    .line 403
    :cond_14
    const-string v1, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled Intent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    .line 448
    :cond_15
    const-string v1, "OutgoingCallBroadcaster"

    const-string v1, "onCreate: null or empty number, setting callNow=true..."

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v1, "com.android.phone.videocall"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 450
    const-string v1, "OutgoingCallBroadcaster"

    const-string v1, "change action video to voice call"

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_16
    move v3, v11

    .line 457
    :goto_7
    if-eqz v3, :cond_18

    .line 458
    const-class v1, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 459
    sget-boolean v1, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v1, :cond_17

    const-string v1, "OutgoingCallBroadcaster"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate(): callNow case, calling startActivity: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_17
    invoke-virtual {p0, v0}, Lcom/android/phone/OutgoingCallBroadcaster;->startActivity(Landroid/content/Intent;)V

    .line 473
    :cond_18
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 474
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 475
    const-string v5, "sip"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 476
    :cond_19
    invoke-direct {p0, p0, v0, v4, v6}, Lcom/android/phone/OutgoingCallBroadcaster;->startSipCallOptionsHandler(Landroid/content/Context;Landroid/content/Intent;Landroid/net/Uri;Ljava/lang/String;)V

    .line 477
    invoke-virtual {p0}, Lcom/android/phone/OutgoingCallBroadcaster;->finish()V

    goto/16 :goto_0

    .line 481
    :cond_1a
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    if-eqz v6, :cond_1b

    .line 483
    const-string v5, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 485
    :cond_1b
    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->checkAndCopyPhoneProviderExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 486
    const-string v5, "android.phone.extra.ALREADY_CALLED"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 487
    const-string v3, "android.phone.extra.ORIGINAL_URI"

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    const-string v3, "com.android.phone.videocall"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 490
    const-string v2, "OutgoingCallBroadcaster"

    const-string v2, "Inside VIDEO CALL INTENT ACTION from Dialer only for U1"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-string v2, "android.phone.extra.calltype"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 498
    :goto_8
    const-string v2, "ipcall"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 499
    const-string v2, "ipcall"

    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 500
    const-string v2, "ipcall"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 503
    :cond_1c
    sget-boolean v0, Lcom/android/phone/OutgoingCallBroadcaster;->DBG:Z

    if-eqz v0, :cond_1d

    const-string v0, "OutgoingCallBroadcaster"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_1d
    const-string v2, "android.permission.PROCESS_OUTGOING_CALLS"

    new-instance v3, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;

    invoke-direct {v3, p0}, Lcom/android/phone/OutgoingCallBroadcaster$OutgoingCallReceiver;-><init>(Lcom/android/phone/OutgoingCallBroadcaster;)V

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/OutgoingCallBroadcaster;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 494
    :cond_1e
    const-string v2, "OutgoingCallBroadcaster"

    const-string v2, "Inside VOICE CALL INTENT ACTION from Dialer for U1"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const-string v2, "android.phone.extra.calltype"

    invoke-virtual {v1, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_8

    :cond_1f
    move v3, v1

    goto/16 :goto_7

    :cond_20
    move-object v6, v2

    goto/16 :goto_1
.end method
