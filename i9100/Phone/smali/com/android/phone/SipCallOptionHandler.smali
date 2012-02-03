.class public Lcom/android/phone/SipCallOptionHandler;
.super Landroid/app/Activity;
.source "SipCallOptionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCallOption:Ljava/lang/String;

.field private mDialogs:[Landroid/app/Dialog;

.field private mIntent:Landroid/content/Intent;

.field private mMakePrimary:Z

.field private mNumber:Ljava/lang/String;

.field private mOutgoingSipProfile:Landroid/net/sip/SipProfile;

.field private mProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/sip/SipProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mUnsetPriamryHint:Landroid/widget/TextView;

.field private mUseSipPhone:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/app/Dialog;

    iput-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    .line 75
    iput-boolean v1, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SipCallOptionHandler;)Landroid/net/sip/SipProfile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/SipCallOptionHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/SipCallOptionHandler;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/phone/SipCallOptionHandler;->createSipPhoneIfNeeded(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/SipCallOptionHandler;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/SipCallOptionHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/SipCallOptionHandler;)Lcom/android/phone/sip/SipSharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/SipCallOptionHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/phone/SipCallOptionHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->getPrimarySipPhone()V

    return-void
.end method

.method private addMakeDefaultCheckBox(Landroid/app/Dialog;)V
    .locals 5
    .parameter "dialog"

    .prologue
    .line 253
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/phone/SipCallOptionHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 255
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x109001b

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 257
    .local v2, view:Landroid/view/View;
    const v3, 0x102019f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 259
    .local v1, makePrimaryCheckBox:Landroid/widget/CheckBox;
    const v3, 0x7f0d020d

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setText(I)V

    .line 260
    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 261
    const v3, 0x10201a0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    .line 263
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const v4, 0x7f0d020e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object v3, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    check-cast p1, Landroid/app/AlertDialog;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 266
    return-void
.end method

.method private createSipPhoneIfNeeded(Landroid/net/sip/SipProfile;)V
    .locals 7
    .parameter "p"

    .prologue
    const-string v6, "SipCallOptionHandler"

    .line 324
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v0, v3, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 325
    .local v0, cm:Lcom/android/internal/telephony/CallManager;
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtils;->getSipPhoneFromUri(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 339
    :goto_0
    return-void

    .line 329
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;)V

    .line 330
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->makeSipPhone(Ljava/lang/String;)Lcom/android/internal/telephony/sip/SipPhone;

    move-result-object v2

    .line 331
    .local v2, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_1

    .line 332
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z
    :try_end_0
    .catch Landroid/net/sip/SipException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 337
    .local v1, e:Landroid/net/sip/SipException;
    const-string v3, "SipCallOptionHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot open sip profile"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 334
    .end local v1           #e:Landroid/net/sip/SipException;
    .restart local v2       #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    :try_start_1
    const-string v3, "SipCallOptionHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot make sipphone profile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/net/sip/SipException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private getPrimaryFromExistingProfiles(Ljava/lang/String;)Landroid/net/sip/SipProfile;
    .locals 4
    .parameter "primarySipUri"

    .prologue
    const/4 v3, 0x0

    .line 409
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipProfileDb;->retrieveSipProfileList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    .line 410
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    if-nez v2, :cond_0

    move-object v2, v3

    .line 414
    :goto_0
    return-object v2

    .line 411
    :cond_0
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/sip/SipProfile;

    .line 412
    .local v1, p:Landroid/net/sip/SipProfile;
    invoke-virtual {v1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    goto :goto_0

    .end local v1           #p:Landroid/net/sip/SipProfile;
    :cond_2
    move-object v2, v3

    .line 414
    goto :goto_0
.end method

.method private getPrimarySipPhone()V
    .locals 2

    .prologue
    .line 392
    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    .line 394
    .local v0, primarySipUri:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->getPrimaryFromExistingProfiles(Ljava/lang/String;)Landroid/net/sip/SipProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    .line 395
    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    if-nez v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 397
    new-instance v1, Lcom/android/phone/SipCallOptionHandler$3;

    invoke-direct {v1, p0}, Lcom/android/phone/SipCallOptionHandler$3;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-virtual {p0, v1}, Lcom/android/phone/SipCallOptionHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 406
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto :goto_0
.end method

.method private getProfileNameArray()[Ljava/lang/CharSequence;
    .locals 6

    .prologue
    .line 269
    iget-object v5, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/CharSequence;

    .line 270
    .local v0, entries:[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 271
    .local v1, i:I
    iget-object v5, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/sip/SipProfile;

    .line 272
    .local v4, p:Landroid/net/sip/SipProfile;
    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .local v2, i:I
    invoke-virtual {v4}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    move v1, v2

    .end local v2           #i:I
    .restart local v1       #i:I
    goto :goto_0

    .line 274
    .end local v4           #p:Landroid/net/sip/SipProfile;
    :cond_0
    return-object v0
.end method

.method private isNetworkConnected()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 371
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/phone/SipCallOptionHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 373
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_4

    .line 374
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 375
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 380
    .end local v1           #ni:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 377
    .restart local v1       #ni:Landroid/net/NetworkInfo;
    :cond_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, v4, :cond_2

    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0

    .end local v1           #ni:Landroid/net/NetworkInfo;
    :cond_4
    move v2, v3

    .line 380
    goto :goto_0
.end method

.method private setResultAndFinish()V
    .locals 1

    .prologue
    .line 342
    new-instance v0, Lcom/android/phone/SipCallOptionHandler$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SipCallOptionHandler$1;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 368
    return-void
.end method

.method private startGetPrimarySipPhoneThread()V
    .locals 2

    .prologue
    .line 384
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/SipCallOptionHandler$2;

    invoke-direct {v1, p0}, Lcom/android/phone/SipCallOptionHandler$2;-><init>(Lcom/android/phone/SipCallOptionHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 389
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    .line 312
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 315
    iput-boolean p2, p0, Lcom/android/phone/SipCallOptionHandler;->mMakePrimary:Z

    .line 316
    if-eqz p2, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mUnsetPriamryHint:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 278
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    .line 308
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_1

    .line 283
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    .line 285
    const-string v1, "SipCallOptionHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User pick phone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const v1, 0x7f0d0210

    invoke-virtual {p0, v1}, Lcom/android/phone/SipCallOptionHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    iput-boolean v4, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 288
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->startGetPrimarySipPhoneThread()V

    goto :goto_0

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    aget-object v0, v0, v4

    if-ne p1, v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mProfileList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/sip/SipProfile;

    iput-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mOutgoingSipProfile:Landroid/net/sip/SipProfile;

    .line 307
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto :goto_0

    .line 293
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_5

    .line 295
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_0

    .line 298
    :cond_5
    const/4 v0, -0x1

    if-ne p2, v0, :cond_6

    .line 300
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/sip/SipSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 302
    invoke-virtual {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->startActivity(Landroid/content/Intent;)V

    .line 304
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "tel"

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.phone.extra.NEW_CALL_INTENT"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    iput-object v6, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    .line 84
    iget-object v6, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    if-nez v6, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    .line 179
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 113
    invoke-static {p0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v5

    .line 114
    .local v5, voipSupported:Z
    new-instance v6, Lcom/android/phone/sip/SipProfileDb;

    invoke-direct {v6, p0}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    .line 115
    new-instance v6, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v6, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 116
    iget-object v6, p0, Lcom/android/phone/SipCallOptionHandler;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v6}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    .line 117
    const-string v6, "SipCallOptionHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Call option is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v6, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 119
    .local v4, uri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, scheme:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v6, p0}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v6}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOn()Z

    move-result v0

    .line 122
    .local v0, isInCellNetwork:Z
    const-string v6, "tel"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "sip"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v1, v10

    .line 123
    .local v1, isKnownCallScheme:Z
    :goto_1
    const-string v6, "tel"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/phone/SipCallOptionHandler;->mNumber:Ljava/lang/String;

    invoke-static {v6}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v10

    .line 127
    .local v2, isRegularCall:Z
    :goto_2
    if-nez v1, :cond_4

    .line 128
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_0

    .end local v1           #isKnownCallScheme:Z
    .end local v2           #isRegularCall:Z
    :cond_2
    move v1, v9

    .line 122
    goto :goto_1

    .restart local v1       #isKnownCallScheme:Z
    :cond_3
    move v2, v9

    .line 123
    goto :goto_2

    .line 133
    .restart local v2       #isRegularCall:Z
    :cond_4
    if-nez v5, :cond_6

    .line 134
    if-nez v2, :cond_5

    .line 135
    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_0

    .line 137
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_0

    .line 149
    :cond_6
    iget-object v6, p0, Lcom/android/phone/SipCallOptionHandler;->mIntent:Landroid/content/Intent;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 150
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->isNetworkConnected()Z

    move-result v6

    if-nez v6, :cond_7

    .line 151
    if-nez v2, :cond_a

    .line 152
    const/4 v6, 0x3

    invoke-virtual {p0, v6}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_0

    .line 156
    :cond_7
    iget-object v6, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    const-string v7, "SIP_ASK_ME_EACH_TIME"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    .line 158
    invoke-virtual {p0, v9}, Lcom/android/phone/SipCallOptionHandler;->showDialog(I)V

    goto/16 :goto_0

    .line 161
    :cond_8
    iget-object v6, p0, Lcom/android/phone/SipCallOptionHandler;->mCallOption:Ljava/lang/String;

    const-string v7, "SIP_ADDRESS_ONLY"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v2, :cond_a

    .line 163
    :cond_9
    iput-boolean v10, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 168
    :cond_a
    iget-boolean v6, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    if-eqz v6, :cond_d

    .line 171
    iget-object v6, p0, Lcom/android/phone/SipCallOptionHandler;->mSipProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v6}, Lcom/android/phone/sip/SipProfileDb;->getProfilesCount()I

    move-result v6

    if-gtz v6, :cond_b

    if-nez v2, :cond_c

    .line 172
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->startGetPrimarySipPhoneThread()V

    goto/16 :goto_0

    .line 175
    :cond_c
    iput-boolean v9, p0, Lcom/android/phone/SipCallOptionHandler;->mUseSipPhone:Z

    .line 178
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->setResultAndFinish()V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v7, 0x104000a

    const/4 v6, -0x1

    const/high16 v5, 0x104

    const v4, 0x1080027

    .line 193
    packed-switch p1, :pswitch_data_0

    .line 244
    const/4 v0, 0x0

    .line 246
    .local v0, dialog:Landroid/app/Dialog;
    :goto_0
    if-eqz v0, :cond_0

    .line 247
    iget-object v2, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    aput-object v0, v2, p1

    .line 249
    :cond_0
    return-object v0

    .line 195
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d020b

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070004

    invoke-virtual {v2, v3, v6, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 202
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 204
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d020c

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/phone/SipCallOptionHandler;->getProfileNameArray()[Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3, v6, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 211
    .restart local v0       #dialog:Landroid/app/Dialog;
    invoke-direct {p0, v0}, Lcom/android/phone/SipCallOptionHandler;->addMakeDefaultCheckBox(Landroid/app/Dialog;)V

    goto :goto_0

    .line 214
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0211

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0212

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d0213

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 222
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto :goto_0

    .line 224
    .end local v0           #dialog:Landroid/app/Dialog;
    :pswitch_3
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v1

    .line 225
    .local v1, wifiOnly:Z
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    if-eqz v1, :cond_1

    const v3, 0x7f0d024c

    :goto_1
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v1, :cond_2

    const v3, 0x7f0d024e

    :goto_2
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 234
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 225
    .end local v0           #dialog:Landroid/app/Dialog;
    :cond_1
    const v3, 0x7f0d024b

    goto :goto_1

    :cond_2
    const v3, 0x7f0d024d

    goto :goto_2

    .line 236
    .end local v1           #wifiOnly:Z
    :pswitch_4
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d024f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v7, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 242
    .restart local v0       #dialog:Landroid/app/Dialog;
    goto/16 :goto_0

    .line 193
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 5

    .prologue
    .line 183
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 184
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SipCallOptionHandler;->mDialogs:[Landroid/app/Dialog;

    .local v0, arr$:[Landroid/app/Dialog;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 186
    .local v1, dialog:Landroid/app/Dialog;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 185
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 188
    .end local v1           #dialog:Landroid/app/Dialog;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SipCallOptionHandler;->finish()V

    goto :goto_0
.end method
