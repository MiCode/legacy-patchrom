.class public Lcom/motorola/blur/setup/LocaleSelect;
.super Lcom/motorola/blur/setup/ConnectionSetupActivity;
.source "LocaleSelect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/LocaleSelect$LocaleComparator;,
        Lcom/motorola/blur/setup/LocaleSelect$UILocale;
    }
.end annotation


# static fields
.field private static final GET_OTARESULT_REQUEST:I = 0x1

.field private static final OTA_REQUEST_CODE:I = 0x2

.field private static final SEQUENCE:[I = null

.field private static final TAG:Ljava/lang/String; = "LocaleSelect"


# instance fields
.field private mActivityMan:Landroid/app/IActivityManager;

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/motorola/blur/setup/LocaleSelect$UILocale;",
            ">;"
        }
    .end annotation
.end field

.field private mBreakoutPos:I

.field private final mComparator:Lcom/motorola/blur/setup/LocaleSelect$LocaleComparator;

.field private mNetworkTimePreference:Z

.field private mProgramaticallySetSpinner:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUnregistered:Z

.field protected mUpdatedLocale:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/blur/setup/LocaleSelect;->SEQUENCE:[I

    return-void

    :array_0
    .array-data 0x4
        0x21t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Lcom/motorola/blur/setup/ConnectionSetupActivity;-><init>()V

    .line 66
    iput-object v1, p0, Lcom/motorola/blur/setup/LocaleSelect;->mActivityMan:Landroid/app/IActivityManager;

    .line 67
    iput-object v1, p0, Lcom/motorola/blur/setup/LocaleSelect;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 68
    iput-boolean v0, p0, Lcom/motorola/blur/setup/LocaleSelect;->mProgramaticallySetSpinner:Z

    .line 69
    iput-boolean v0, p0, Lcom/motorola/blur/setup/LocaleSelect;->mUpdatedLocale:Z

    .line 70
    iput-boolean v0, p0, Lcom/motorola/blur/setup/LocaleSelect;->mNetworkTimePreference:Z

    .line 71
    iput-boolean v0, p0, Lcom/motorola/blur/setup/LocaleSelect;->mUnregistered:Z

    .line 72
    iput v0, p0, Lcom/motorola/blur/setup/LocaleSelect;->mBreakoutPos:I

    .line 75
    new-instance v0, Lcom/motorola/blur/setup/LocaleSelect$LocaleComparator;

    invoke-direct {v0}, Lcom/motorola/blur/setup/LocaleSelect$LocaleComparator;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/setup/LocaleSelect;->mComparator:Lcom/motorola/blur/setup/LocaleSelect$LocaleComparator;

    .line 352
    new-instance v0, Lcom/motorola/blur/setup/LocaleSelect$3;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/LocaleSelect$3;-><init>(Lcom/motorola/blur/setup/LocaleSelect;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/LocaleSelect;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/LocaleSelect;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->goNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/motorola/blur/setup/LocaleSelect;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/motorola/blur/setup/LocaleSelect;->mNetworkTimePreference:Z

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/blur/setup/LocaleSelect;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/motorola/blur/setup/LocaleSelect;->mNetworkTimePreference:Z

    return p1
.end method

.method private compareBreakout(II)I
    .locals 2
    .parameter "position"
    .parameter "keyCode"

    .prologue
    const/4 v1, 0x0

    .line 180
    sget-object v0, Lcom/motorola/blur/setup/LocaleSelect;->SEQUENCE:[I

    array-length v0, v0

    if-lt p1, v0, :cond_0

    move v0, v1

    .line 186
    :goto_0
    return v0

    .line 183
    :cond_0
    sget-object v0, Lcom/motorola/blur/setup/LocaleSelect;->SEQUENCE:[I

    aget v0, v0, p1

    if-ne p2, v0, :cond_1

    .line 184
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 186
    goto :goto_0
.end method

.method private continueToNext()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 282
    :try_start_0
    sget-boolean v4, Lcom/motorola/blur/setup/LocaleSelect;->mSilentRegistrationRequired:Z

    if-nez v4, :cond_0

    .line 283
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.phone.activation"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v3, otaRegistrationIntent:Landroid/content/Intent;
    const/4 v4, 0x2

    invoke-virtual {p0, v3, v4}, Lcom/motorola/blur/setup/LocaleSelect;->startActivityForResult(Landroid/content/Intent;I)V

    .line 304
    .end local v3           #otaRegistrationIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 287
    :cond_0
    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/LocaleSelect;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 289
    .local v0, TelephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 294
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 295
    .local v2, otaIntent:Landroid/content/Intent;
    const-string v4, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    const/4 v4, 0x1

    invoke-virtual {p0, v2, v4}, Lcom/motorola/blur/setup/LocaleSelect;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    .end local v0           #TelephonyManager:Landroid/telephony/TelephonyManager;
    .end local v2           #otaIntent:Landroid/content/Intent;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 302
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->goToNextActivity()V

    goto :goto_0

    .line 298
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .restart local v0       #TelephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->goToNextActivity()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private disconnectSpinner()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 455
    const v1, 0x7f0b00c6

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/LocaleSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 456
    .local v0, spinner:Landroid/widget/Spinner;
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 457
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 458
    return-void
.end method

.method private findCurrentLocale(Ljava/util/Locale;)I
    .locals 10
    .parameter "currentLocale"

    .prologue
    const/4 v9, 0x0

    .line 553
    iget-object v1, p0, Lcom/motorola/blur/setup/LocaleSelect;->mActivityMan:Landroid/app/IActivityManager;

    .line 555
    .local v1, am:Landroid/app/IActivityManager;
    if-nez p1, :cond_0

    .line 556
    :try_start_0
    invoke-interface {v1}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 557
    .local v2, config:Landroid/content/res/Configuration;
    iget-object p1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 559
    .end local v2           #config:Landroid/content/res/Configuration;
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/LocaleSelect;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 560
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/motorola/blur/setup/LocaleSelect$UILocale;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v5

    .line 561
    .local v5, numItems:I
    const/4 v4, 0x0

    .end local p0
    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 562
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/blur/setup/LocaleSelect$UILocale;

    iget-object v6, p0, Lcom/motorola/blur/setup/LocaleSelect$UILocale;->locale:Ljava/util/Locale;

    invoke-virtual {v6, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    .line 569
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/motorola/blur/setup/LocaleSelect$UILocale;>;"
    .end local v4           #i:I
    .end local v5           #numItems:I
    :goto_1
    return v6

    .line 561
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/motorola/blur/setup/LocaleSelect$UILocale;>;"
    .restart local v4       #i:I
    .restart local v5       #numItems:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 566
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/motorola/blur/setup/LocaleSelect$UILocale;>;"
    .end local v4           #i:I
    .end local v5           #numItems:I
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 567
    .local v3, exception:Landroid/os/RemoteException;
    const-string v6, "LocaleSelect"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "Can\'t get current configuration"

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Lcom/motorola/blur/util/Logger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v3           #exception:Landroid/os/RemoteException;
    :cond_2
    move v6, v9

    .line 569
    goto :goto_1
.end method

.method private formatPressMenuText()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x20

    .line 580
    const v6, 0x7f0b00c7

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/LocaleSelect;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 581
    .local v5, text:Landroid/widget/TextView;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 582
    .local v4, sb:Landroid/text/SpannableStringBuilder;
    const v6, 0x7f0c0006

    invoke-virtual {p0, v6}, Lcom/motorola/blur/setup/LocaleSelect;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 584
    .local v3, menuString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocaleSelect;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x30201c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 586
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v0, v9, v9, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 588
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 589
    .local v2, menuLen:I
    const/16 v6, 0x22

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 590
    .local v1, end:I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_1

    .line 591
    add-int/lit8 v1, v2, 0x1

    .line 592
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 602
    :cond_0
    :goto_0
    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v7, v1, 0x1

    const/16 v8, 0x21

    invoke-virtual {v4, v6, v1, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 604
    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v5, v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 605
    invoke-virtual {v5}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/ViewParent;->requestLayout()V

    .line 606
    return-void

    .line 594
    :cond_1
    if-ge v1, v2, :cond_0

    .line 595
    add-int/lit8 v1, v1, 0x2

    .line 596
    invoke-virtual {v3, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v6

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 598
    if-ne v1, v2, :cond_0

    .line 599
    invoke-virtual {v4, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method

.method private declared-synchronized goNext()V
    .locals 4

    .prologue
    .line 335
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/motorola/blur/setup/LocaleSelect;->mNetworkTimePreference:Z

    if-eqz v2, :cond_1

    .line 337
    const/4 v0, 0x0

    .line 338
    .local v0, ftr_setting:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocaleSelect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "ftr_34568_enable"

    invoke-static {v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    if-eqz v0, :cond_0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 340
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/motorola/blur/setup/DataPlanSettingActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/LocaleSelect;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    .end local v0           #ftr_setting:Ljava/lang/String;
    :goto_0
    monitor-exit p0

    return-void

    .line 342
    .restart local v0       #ftr_setting:Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/motorola/blur/setup/LocaleSelect;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 335
    .end local v0           #ftr_setting:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 346
    :cond_1
    :try_start_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 347
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.motorola.blur.setupsettings.DATE_TIME_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/LocaleSelect;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private goToNextActivity()V
    .locals 5

    .prologue
    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, ftr_setting:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocaleSelect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "ftr_34568_enable"

    invoke-static {v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_0

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->goNext()V

    .line 332
    :goto_0
    return-void

    .line 316
    :cond_0
    sget-boolean v3, Lcom/motorola/blur/setup/LocaleSelect;->mShowConnectionChooser:Z

    if-eqz v3, :cond_1

    .line 318
    new-instance v1, Lcom/motorola/blur/setup/LocaleSelect$1;

    invoke-direct {v1, p0}, Lcom/motorola/blur/setup/LocaleSelect$1;-><init>(Lcom/motorola/blur/setup/LocaleSelect;)V

    .line 323
    .local v1, onConnection:Ljava/lang/Runnable;
    new-instance v2, Lcom/motorola/blur/setup/LocaleSelect$2;

    invoke-direct {v2, p0}, Lcom/motorola/blur/setup/LocaleSelect$2;-><init>(Lcom/motorola/blur/setup/LocaleSelect;)V

    .line 328
    .local v2, onTimeout:Ljava/lang/Runnable;
    invoke-virtual {p0, v1, v2}, Lcom/motorola/blur/setup/LocaleSelect;->checkConnection(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 330
    .end local v1           #onConnection:Ljava/lang/Runnable;
    .end local v2           #onTimeout:Ljava/lang/Runnable;
    :cond_1
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->goNext()V

    goto :goto_0
.end method

.method private initSpinner()V
    .locals 2

    .prologue
    .line 444
    const v1, 0x7f0b00c6

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/LocaleSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 445
    .local v0, spinner:Landroid/widget/Spinner;
    iget-object v1, p0, Lcom/motorola/blur/setup/LocaleSelect;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 446
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 447
    return-void
.end method

.method private programaticallySetSpinnerSelection(Landroid/widget/Spinner;I)V
    .locals 1
    .parameter "spinner"
    .parameter "selection"

    .prologue
    .line 545
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/setup/LocaleSelect;->mProgramaticallySetSpinner:Z

    .line 546
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 547
    return-void
.end method

.method private refreshSpinner(Ljava/util/Locale;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 520
    iget-object v1, p0, Lcom/motorola/blur/setup/LocaleSelect;->mComparator:Lcom/motorola/blur/setup/LocaleSelect$LocaleComparator;

    invoke-virtual {v1, p1}, Lcom/motorola/blur/setup/LocaleSelect$LocaleComparator;->updateComparatorToNewLocale(Ljava/util/Locale;)V

    .line 524
    iget-object v1, p0, Lcom/motorola/blur/setup/LocaleSelect;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 525
    const v1, 0x7f0b00c6

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/LocaleSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 526
    .local v0, spinner:Landroid/widget/Spinner;
    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-nez v1, :cond_0

    .line 527
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->initSpinner()V

    .line 529
    :cond_0
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/LocaleSelect;->findCurrentLocale(Ljava/util/Locale;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/motorola/blur/setup/LocaleSelect;->programaticallySetSpinnerSelection(Landroid/widget/Spinner;I)V

    .line 530
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->formatPressMenuText()V

    .line 532
    invoke-virtual {v0}, Landroid/widget/Spinner;->requestLayout()V

    .line 533
    return-void
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 609
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 610
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 611
    const-string v1, "android.intent.action.NETWORK_SET_TIMEZONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 612
    iget-object v1, p0, Lcom/motorola/blur/setup/LocaleSelect;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/motorola/blur/setup/LocaleSelect;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 613
    return-void
.end method

.method private setButtonListeners()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 433
    const v3, 0x7f0b0011

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/LocaleSelect;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 434
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v3, 0x7f0c006b

    const v4, 0x7f0b0005

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 435
    .local v1, emergencyButton:Landroid/widget/Button;
    const v3, 0x7f0c010f

    const v4, 0x7f0b0006

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 436
    .local v2, startButton:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 439
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 440
    const v3, 0x7f020028

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 441
    return-void
.end method

.method private setUpLocaleSpinner()V
    .locals 20

    .prologue
    .line 461
    const v16, 0x7f0b00c6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/LocaleSelect;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Spinner;

    .line 462
    .local v14, spinner:Landroid/widget/Spinner;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/LocaleSelect;->mAdapter:Landroid/widget/ArrayAdapter;

    move-object v3, v0

    .line 463
    .local v3, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/motorola/blur/setup/LocaleSelect$UILocale;>;"
    if-eqz v14, :cond_4

    .line 464
    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->clear()V

    .line 465
    const/4 v9, 0x0

    .line 467
    .local v9, locales:[Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/motorola/blur/setup/LocaleSelect;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 472
    invoke-static {v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 473
    if-eqz v9, :cond_5

    move-object v0, v9

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v10, v16

    .line 474
    .local v10, numLocales:I
    :goto_0
    const/4 v12, 0x0

    .line 475
    .local v12, prevLang:Ljava/lang/String;
    const/4 v11, 0x0

    .line 476
    .local v11, prevCountry:Ljava/lang/String;
    const/4 v13, 0x0

    .line 477
    .local v13, prevLoc:Lcom/motorola/blur/setup/LocaleSelect$UILocale;
    const/4 v15, 0x0

    .line 480
    .local v15, useDisplay:Z
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v10, :cond_9

    .line 481
    const/4 v8, 0x0

    .line 482
    .local v8, locale:Ljava/util/Locale;
    aget-object v6, v9, v5

    .line 483
    .local v6, label:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 484
    .local v7, len:I
    const/16 v16, 0x2

    move v0, v7

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 485
    new-instance v8, Ljava/util/Locale;

    .end local v8           #locale:Ljava/util/Locale;
    invoke-direct {v8, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 491
    .restart local v8       #locale:Ljava/util/Locale;
    :cond_0
    :goto_2
    if-eqz v8, :cond_3

    .line 496
    if-eqz v12, :cond_8

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 497
    if-eqz v13, :cond_2

    .line 498
    if-eqz v11, :cond_1

    const-string v16, ""

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_7

    .line 499
    :cond_1
    invoke-virtual {v3, v13}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 509
    :cond_2
    :goto_3
    new-instance v13, Lcom/motorola/blur/setup/LocaleSelect$UILocale;

    .end local v13           #prevLoc:Lcom/motorola/blur/setup/LocaleSelect$UILocale;
    invoke-direct {v13, v8, v15}, Lcom/motorola/blur/setup/LocaleSelect$UILocale;-><init>(Ljava/util/Locale;Z)V

    .line 510
    .restart local v13       #prevLoc:Lcom/motorola/blur/setup/LocaleSelect$UILocale;
    invoke-virtual {v3, v13}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 511
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    .line 512
    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    .line 480
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 468
    .end local v5           #i:I
    .end local v6           #label:Ljava/lang/String;
    .end local v7           #len:I
    .end local v8           #locale:Ljava/util/Locale;
    .end local v10           #numLocales:I
    .end local v11           #prevCountry:Ljava/lang/String;
    .end local v12           #prevLang:Ljava/lang/String;
    .end local v13           #prevLoc:Lcom/motorola/blur/setup/LocaleSelect$UILocale;
    .end local v15           #useDisplay:Z
    :catch_0
    move-exception v16

    move-object/from16 v4, v16

    .line 469
    .local v4, exception:Ljava/lang/Exception;
    const-string v16, "LocaleSelect"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const-string v19, "Couldn\'t find locales on the device"

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 517
    .end local v4           #exception:Ljava/lang/Exception;
    .end local v9           #locales:[Ljava/lang/String;
    :cond_4
    :goto_4
    return-void

    .line 473
    .restart local v9       #locales:[Ljava/lang/String;
    :cond_5
    const/16 v16, 0x0

    move/from16 v10, v16

    goto :goto_0

    .line 486
    .restart local v5       #i:I
    .restart local v6       #label:Ljava/lang/String;
    .restart local v7       #len:I
    .restart local v8       #locale:Ljava/util/Locale;
    .restart local v10       #numLocales:I
    .restart local v11       #prevCountry:Ljava/lang/String;
    .restart local v12       #prevLang:Ljava/lang/String;
    .restart local v13       #prevLoc:Lcom/motorola/blur/setup/LocaleSelect$UILocale;
    .restart local v15       #useDisplay:Z
    :cond_6
    const/16 v16, 0x5

    move v0, v7

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 487
    new-instance v8, Ljava/util/Locale;

    .end local v8           #locale:Ljava/util/Locale;
    const/16 v16, 0x0

    const/16 v17, 0x2

    move-object v0, v6

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x3

    const/16 v18, 0x5

    move-object v0, v6

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v8       #locale:Ljava/util/Locale;
    goto :goto_2

    .line 501
    :cond_7
    const/16 v16, 0x1

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/LocaleSelect$UILocale;->setShouldUseDisplay(Z)V

    .line 502
    const/4 v15, 0x1

    goto :goto_3

    .line 506
    :cond_8
    const/4 v15, 0x0

    goto :goto_3

    .line 515
    .end local v6           #label:Ljava/lang/String;
    .end local v7           #len:I
    .end local v8           #locale:Ljava/util/Locale;
    :cond_9
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/motorola/blur/setup/LocaleSelect;->refreshSpinner(Ljava/util/Locale;)V

    goto :goto_4
.end method

.method private unregisterGoToLocationActivity()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 616
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocaleSelect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 617
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocaleSelect;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 618
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v4, Lcom/motorola/blur/setup/HomeActivity;

    invoke-direct {v2, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 619
    .local v2, name1:Landroid/content/ComponentName;
    invoke-virtual {v3, v2, v7, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 620
    new-instance v1, Landroid/content/ComponentName;

    const-class v4, Lcom/motorola/blur/setup/LocaleSelect;

    invoke-direct {v1, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 621
    .local v1, name:Landroid/content/ComponentName;
    invoke-virtual {v3, v1, v7, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 622
    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/motorola/blur/setup/SetupInfoActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v4, v7, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 624
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 625
    .local v0, intent:Landroid/content/Intent;
    const-class v4, Lcom/motorola/blur/setup/LocationConsentActivity;

    invoke-virtual {v0, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 627
    const-string v4, "hide_back"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 628
    const-string v4, "call_from_main"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 629
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/LocaleSelect;->startActivity(Landroid/content/Intent;)V

    .line 630
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocaleSelect;->finish()V

    .line 631
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 574
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 575
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->goToNextActivity()V

    .line 577
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 241
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 259
    :goto_0
    return-void

    .line 243
    :pswitch_0
    invoke-static {}, Lcom/motorola/blur/setup/SilentBlurUtility;->silentSetupSDFileExists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/blur/setup/QASilentLogin;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 245
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/LocaleSelect;->startActivity(Landroid/content/Intent;)V

    .line 246
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/LocaleSelect;->setResult(I)V

    .line 247
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocaleSelect;->finish()V

    goto :goto_0

    .line 250
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/setup/LocaleSelect;->mReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v1

    .line 251
    :try_start_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->continueToNext()V

    .line 252
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 256
    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocaleSelect;->makeEmergencyCall()V

    goto :goto_0

    .line 241
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0005
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 160
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->disconnectSpinner()V

    .line 161
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/LocaleSelect;->setContentView(I)V

    .line 162
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/LocaleSelect;->refreshSpinner(Ljava/util/Locale;)V

    .line 163
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->setButtonListeners()V

    .line 164
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v2, 0x1

    .line 381
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 382
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->registerReceiver()V

    .line 383
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/LocaleSelect;->mActivityMan:Landroid/app/IActivityManager;

    .line 384
    invoke-static {p0}, Lcom/motorola/blur/provider/DeviceSetup$Accounts;->hasBlurAccount(Landroid/content/Context;)Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 385
    const-string v1, "LocaleSelect"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Setup has already run.  Unregistering."

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/motorola/blur/util/Logger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->unregisterGoToLocationActivity()V

    .line 389
    :cond_0
    const v1, 0x7f030028

    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/LocaleSelect;->setContentView(I)V

    .line 392
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    invoke-direct {v0, p0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 394
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/motorola/blur/setup/LocaleSelect$UILocale;>;"
    const v1, 0x7f030027

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 395
    iput-object v0, p0, Lcom/motorola/blur/setup/LocaleSelect;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 396
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->initSpinner()V

    .line 398
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->setUpLocaleSpinner()V

    .line 401
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->setButtonListeners()V

    .line 404
    invoke-direct {p0}, Lcom/motorola/blur/setup/LocaleSelect;->formatPressMenuText()V

    .line 405
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/motorola/blur/setup/LocaleSelect;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/LocaleSelect;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 410
    invoke-super {p0}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->onDestroy()V

    .line 411
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "view"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/motorola/blur/setup/LocaleSelect;->mProgramaticallySetSpinner:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 171
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/LocaleSelect;->mProgramaticallySetSpinner:Z

    .line 172
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 177
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocaleSelect;->setLocale()V

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/LocaleSelect;->refreshSpinner(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 204
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 206
    const/16 v3, 0x1d

    if-lt p1, v3, :cond_0

    const/16 v3, 0x36

    if-le p1, v3, :cond_1

    .line 209
    :cond_0
    iput v4, p0, Lcom/motorola/blur/setup/LocaleSelect;->mBreakoutPos:I

    move v3, v4

    .line 229
    :goto_0
    return v3

    .line 213
    :cond_1
    iget v3, p0, Lcom/motorola/blur/setup/LocaleSelect;->mBreakoutPos:I

    invoke-direct {p0, v3, p1}, Lcom/motorola/blur/setup/LocaleSelect;->compareBreakout(II)I

    move-result v3

    iput v3, p0, Lcom/motorola/blur/setup/LocaleSelect;->mBreakoutPos:I

    .line 214
    iget v3, p0, Lcom/motorola/blur/setup/LocaleSelect;->mBreakoutPos:I

    sget-object v4, Lcom/motorola/blur/setup/LocaleSelect;->SEQUENCE:[I

    array-length v4, v4

    if-ne v3, v4, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocaleSelect;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 216
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocaleSelect;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 217
    .local v2, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v3, Lcom/motorola/blur/setup/HomeActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 218
    .local v1, name:Landroid/content/ComponentName;
    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, i:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.motorola.blur.home"

    const-string v5, "com.motorola.blur.home.HomeActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 222
    const-string v3, "setupByPassed"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 223
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/LocaleSelect;->startActivity(Landroid/content/Intent;)V

    .line 225
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/LocaleSelect;->setResult(I)V

    .line 226
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocaleSelect;->finish()V

    .end local v0           #i:Landroid/content/Intent;
    .end local v1           #name:Landroid/content/ComponentName;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    move v3, v6

    .line 229
    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 7
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v6, 0x4

    .line 416
    iget-boolean v5, p0, Lcom/motorola/blur/setup/LocaleSelect;->mUpdatedLocale:Z

    if-eqz v5, :cond_1

    .line 417
    new-array v1, v6, [I

    fill-array-data v1, :array_0

    .line 418
    .local v1, indexes:[I
    new-array v4, v6, [I

    fill-array-data v4, :array_1

    .line 419
    .local v4, resources:[I
    const/4 v0, 0x0

    .local v0, i:I
    array-length v2, v1

    .local v2, len:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 420
    aget v5, v1, v0

    invoke-interface {p2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 421
    .local v3, mitem:Landroid/view/MenuItem;
    if-eqz v3, :cond_0

    .line 422
    aget v5, v4, v0

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 419
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 426
    .end local v0           #i:I
    .end local v1           #indexes:[I
    .end local v2           #len:I
    .end local v3           #mitem:Landroid/view/MenuItem;
    .end local v4           #resources:[I
    :cond_1
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/motorola/blur/setup/LocaleSelect;->mUpdatedLocale:Z

    .line 427
    invoke-super {p0, p1, p2}, Lcom/motorola/blur/setup/ConnectionSetupActivity;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v5

    return v5

    .line 417
    nop

    :array_0
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
    .end array-data

    .line 418
    :array_1
    .array-data 0x4
        0x6bt 0x0t 0xct 0x7ft
        0xcft 0x0t 0xct 0x7ft
        0xd0t 0x0t 0xct 0x7ft
        0xd1t 0x0t 0xct 0x7ft
    .end array-data
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 635
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 636
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 637
    new-instance v1, Landroid/content/Intent;

    const-string v2, "Intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 638
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "call_from_main"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 639
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/LocaleSelect;->startActivity(Landroid/content/Intent;)V

    .line 640
    invoke-virtual {p0}, Lcom/motorola/blur/setup/LocaleSelect;->finish()V

    .line 642
    .end local v1           #newIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 238
    return-void
.end method

.method public setLocale()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/motorola/blur/setup/LocaleSelect;->mActivityMan:Landroid/app/IActivityManager;

    .line 268
    .local v0, am:Landroid/app/IActivityManager;
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 269
    .local v1, config:Landroid/content/res/Configuration;
    const v5, 0x7f0b00c6

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/LocaleSelect;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 270
    .local v4, spinner:Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/motorola/blur/setup/LocaleSelect$UILocale;

    .line 271
    .local v3, loc:Lcom/motorola/blur/setup/LocaleSelect$UILocale;
    iget-object v5, v3, Lcom/motorola/blur/setup/LocaleSelect$UILocale;->locale:Ljava/util/Locale;

    iput-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 272
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 273
    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 274
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/motorola/blur/setup/LocaleSelect;->mUpdatedLocale:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v0           #am:Landroid/app/IActivityManager;
    .end local v1           #config:Landroid/content/res/Configuration;
    .end local v3           #loc:Lcom/motorola/blur/setup/LocaleSelect$UILocale;
    .end local v4           #spinner:Landroid/widget/Spinner;
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 276
    .local v2, exception:Landroid/os/RemoteException;
    const-string v5, "LocaleSelect"

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Remote exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
