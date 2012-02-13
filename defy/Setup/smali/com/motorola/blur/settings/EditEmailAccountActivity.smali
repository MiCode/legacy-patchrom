.class public Lcom/motorola/blur/settings/EditEmailAccountActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "EditEmailAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/motorola/blur/setup/AccountRemovalListener;


# static fields
.field private static final DEFAULT_IMAP_PORT:Ljava/lang/String; = "143"

.field private static final DEFAULT_POP3_PORT:Ljava/lang/String; = "110"

.field private static final DEFAULT_SMTP_PORT:Ljava/lang/String; = "25"

.field private static final DEFAULT_SSL_IMAP:Ljava/lang/String; = "993"

.field private static final DEFAULT_SSL_POP3:Ljava/lang/String; = "995"

.field private static final DEFAULT_SSL_SMTP:Ljava/lang/String; = "465"

.field private static final FIELD_EDITS:[[I = null

.field public static final GENERAL_SETTINGS:I = 0x0

.field private static final IMAP_RETENTION_CHOICES:[I = null

.field public static final INCOMING_ADVANCED:I = 0x5

.field private static final INCOMING_FIELD_EDITS:[I = null

.field public static final INCOMING_SERVER:I = 0x1

.field private static final INCOMING_SERVER_CAPABILITIES:[I = null

.field private static final INCOMING_SERVER_CHOICE_IDS:[I = null

.field public static final OTHER_SETTINGS:I = 0x3

.field public static final OUTGOING_ADVANCED:I = 0x6

.field private static final OUTGOING_FIELD_EDITS:[I = null

.field public static final OUTGOING_SERVER:I = 0x2

.field private static final PASSWORD_EDIT_IDX:I = 0x1

.field private static final POP_AUTH_CHOICES:[I = null

.field private static final POP_RETENTION_CHOICES:[I = null

.field private static final PORT_EDIT_IDX:I = 0x3

.field private static final PROGRESS_POINTS:[I = null

.field private static final RECEIVED_AUTH_RESPONSE:I = 0x5

.field private static final SERVER_EDIT_IDX:I = 0x2

.field public static final SETTINGS_LIST:I = 0x4

.field private static final SMTP_AUTH_CHOICES:[I = null

.field private static final TAG:Ljava/lang/String; = "EEAA"

.field private static final TLS_CHOICES:[I = null

.field private static final UPDATE_PROGRESS:I = 0x4

.field private static final USERNAME_EDIT_IDX:I


# instance fields
.field private mAuth:Lcom/motorola/blur/util/authentication/Authentication;

.field private final mAuthObserver:Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;

.field private mErrorCode:I

.field private final mHandler:Landroid/os/Handler;

.field mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

.field private mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

.field private mSelectionListAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsViewMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->INCOMING_FIELD_EDITS:[I

    .line 90
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->OUTGOING_FIELD_EDITS:[I

    .line 98
    new-array v0, v3, [[I

    sput-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->FIELD_EDITS:[[I

    .line 99
    sget-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->FIELD_EDITS:[[I

    const/4 v1, 0x0

    sget-object v2, Lcom/motorola/blur/settings/EditEmailAccountActivity;->INCOMING_FIELD_EDITS:[I

    aput-object v2, v0, v1

    .line 100
    sget-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->FIELD_EDITS:[[I

    const/4 v1, 0x1

    sget-object v2, Lcom/motorola/blur/settings/EditEmailAccountActivity;->OUTGOING_FIELD_EDITS:[I

    aput-object v2, v0, v1

    .line 110
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->INCOMING_SERVER_CHOICE_IDS:[I

    .line 113
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->INCOMING_SERVER_CAPABILITIES:[I

    .line 117
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->PROGRESS_POINTS:[I

    .line 616
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->POP_RETENTION_CHOICES:[I

    .line 624
    new-array v0, v4, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->IMAP_RETENTION_CHOICES:[I

    .line 630
    new-array v0, v4, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->TLS_CHOICES:[I

    .line 636
    new-array v0, v3, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->POP_AUTH_CHOICES:[I

    .line 642
    new-array v0, v4, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->SMTP_AUTH_CHOICES:[I

    return-void

    .line 84
    nop

    :array_0
    .array-data 0x4
        0x8ft 0x0t 0xbt 0x7ft
        0x91t 0x0t 0xbt 0x7ft
        0x8dt 0x0t 0xbt 0x7ft
        0x95t 0x0t 0xbt 0x7ft
    .end array-data

    .line 90
    :array_1
    .array-data 0x4
        0xa0t 0x0t 0xbt 0x7ft
        0xa2t 0x0t 0xbt 0x7ft
        0x9et 0x0t 0xbt 0x7ft
        0xa6t 0x0t 0xbt 0x7ft
    .end array-data

    .line 110
    :array_2
    .array-data 0x4
        0x9bt 0x0t 0xct 0x7ft
        0x99t 0x0t 0xct 0x7ft
    .end array-data

    .line 113
    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 117
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t
    .end array-data

    .line 616
    :array_5
    .array-data 0x4
        0xbct 0x0t 0xct 0x7ft
        0xbdt 0x0t 0xct 0x7ft
        0xbet 0x0t 0xct 0x7ft
        0xbft 0x0t 0xct 0x7ft
        0xc0t 0x0t 0xct 0x7ft
    .end array-data

    .line 624
    :array_6
    .array-data 0x4
        0xc1t 0x0t 0xct 0x7ft
        0xc2t 0x0t 0xct 0x7ft
        0xc3t 0x0t 0xct 0x7ft
    .end array-data

    .line 630
    :array_7
    .array-data 0x4
        0xcat 0x0t 0xct 0x7ft
        0xc8t 0x0t 0xct 0x7ft
        0xc9t 0x0t 0xct 0x7ft
    .end array-data

    .line 636
    :array_8
    .array-data 0x4
        0xcbt 0x0t 0xct 0x7ft
        0x7ct 0x0t 0xct 0x7ft
    .end array-data

    .line 642
    :array_9
    .array-data 0x4
        0xcdt 0x0t 0xct 0x7ft
        0xc8t 0x0t 0xct 0x7ft
        0xcct 0x0t 0xct 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 121
    iput-object v1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    .line 122
    iput-object v1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 123
    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mSettingsViewMode:I

    .line 124
    iput-object v1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mSelectionListAdapter:Landroid/widget/ArrayAdapter;

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mErrorCode:I

    .line 127
    new-instance v0, Lcom/motorola/blur/settings/EditEmailAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity$1;-><init>(Lcom/motorola/blur/settings/EditEmailAccountActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mAuthObserver:Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;

    .line 172
    new-instance v0, Lcom/motorola/blur/settings/EditEmailAccountActivity$2;

    invoke-direct {v0, p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity$2;-><init>(Lcom/motorola/blur/settings/EditEmailAccountActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/settings/EditEmailAccountActivity;)Lcom/motorola/blur/util/authentication/Authentication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    return-object v0
.end method

.method static synthetic access$002(Lcom/motorola/blur/settings/EditEmailAccountActivity;Lcom/motorola/blur/util/authentication/Authentication;)Lcom/motorola/blur/util/authentication/Authentication;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    return-object p1
.end method

.method static synthetic access$100(Lcom/motorola/blur/settings/EditEmailAccountActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/blur/settings/EditEmailAccountActivity;)Lcom/motorola/blur/setup/SetupProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/blur/settings/EditEmailAccountActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->handleAuthResponse(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/motorola/blur/settings/EditEmailAccountActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setViewMode(I)V

    return-void
.end method

.method private clearCurrentViewModeEntries()I
    .locals 2

    .prologue
    .line 954
    const/4 v0, 0x4

    .line 955
    .local v0, newView:I
    iget v1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mSettingsViewMode:I

    packed-switch v1, :pswitch_data_0

    .line 977
    :goto_0
    :pswitch_0
    return v0

    .line 957
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->resetGeneralSettings()V

    goto :goto_0

    .line 960
    :pswitch_2
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->resetIncomingSettings()V

    goto :goto_0

    .line 963
    :pswitch_3
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->resetIncomingAdvanced()V

    .line 964
    const/4 v0, 0x1

    .line 965
    goto :goto_0

    .line 967
    :pswitch_4
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->resetOutgoingSettings()V

    goto :goto_0

    .line 970
    :pswitch_5
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->resetOutgoingAdvanced()V

    .line 971
    const/4 v0, 0x2

    .line 972
    goto :goto_0

    .line 974
    :pswitch_6
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->resetOtherSettings()V

    goto :goto_0

    .line 955
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private confirmDelete()V
    .locals 3

    .prologue
    .line 1108
    new-instance v0, Lcom/motorola/blur/setup/AccountRemover;

    invoke-direct {v0, p0, p0}, Lcom/motorola/blur/setup/AccountRemover;-><init>(Landroid/content/Context;Lcom/motorola/blur/setup/AccountRemovalListener;)V

    .line 1109
    .local v0, r:Lcom/motorola/blur/setup/AccountRemover;
    iget-object v1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getAccountId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/motorola/blur/setup/AccountRemover;->remove(J)V

    .line 1110
    return-void
.end method

.method private createSimpleAlertDialog(Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 4
    .parameter "message"

    .prologue
    .line 1096
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c008f

    invoke-virtual {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c007f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1101
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1254
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->hide()V

    .line 1255
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->dismiss()V

    .line 1257
    :cond_0
    return-void
.end method

.method private fillFieldsWithModel(Lcom/motorola/blur/settings/EmailSettingsModel;)V
    .locals 12
    .parameter "model"

    .prologue
    .line 463
    new-instance v11, Lcom/motorola/blur/setup/TextLimiter;

    const/16 v0, 0x50

    invoke-direct {v11, v0}, Lcom/motorola/blur/setup/TextLimiter;-><init>(I)V

    .line 464
    .local v11, textLimiter:Lcom/motorola/blur/setup/TextLimiter;
    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 465
    .local v8, edit:Landroid/widget/EditText;
    invoke-virtual {v8, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 466
    invoke-virtual {p1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 469
    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #edit:Landroid/widget/EditText;
    check-cast v8, Landroid/widget/EditText;

    .line 470
    .restart local v8       #edit:Landroid/widget/EditText;
    new-instance v0, Lcom/motorola/blur/setup/TextLimiter;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lcom/motorola/blur/setup/TextLimiter;-><init>(I)V

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 471
    invoke-virtual {p1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getAccountPrettyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 474
    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #edit:Landroid/widget/EditText;
    check-cast v8, Landroid/widget/EditText;

    .line 475
    .restart local v8       #edit:Landroid/widget/EditText;
    invoke-virtual {v8, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 476
    invoke-virtual {p1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getUserPrettyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 479
    const v0, 0x7f0b00a7

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 480
    .local v7, check:Landroid/widget/CheckBox;
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->getSecure(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 481
    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 483
    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #check:Landroid/widget/CheckBox;
    check-cast v7, Landroid/widget/CheckBox;

    .line 484
    .restart local v7       #check:Landroid/widget/CheckBox;
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->getVerifyCA(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 485
    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 487
    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #check:Landroid/widget/CheckBox;
    check-cast v7, Landroid/widget/CheckBox;

    .line 488
    .restart local v7       #check:Landroid/widget/CheckBox;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->getSecure(I)I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 489
    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 491
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #check:Landroid/widget/CheckBox;
    check-cast v7, Landroid/widget/CheckBox;

    .line 492
    .restart local v7       #check:Landroid/widget/CheckBox;
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->getVerifyCA(I)I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 493
    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 495
    const v1, 0x7f0b0097

    const v2, 0x7f0b0098

    const v3, 0x7f0c00a2

    sget-object v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->TLS_CHOICES:[I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->getSecurityPolicy(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setSpinner(III[II)V

    .line 499
    const v1, 0x7f0b00a8

    const v2, 0x7f0b00a9

    const v3, 0x7f0c00a2

    sget-object v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->TLS_CHOICES:[I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->getSecurityPolicy(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setSpinner(III[II)V

    .line 503
    const v1, 0x7f0b00aa

    const v2, 0x7f0b00ab

    const v3, 0x7f0c00a3

    sget-object v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->SMTP_AUTH_CHOICES:[I

    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getOutgoingAuthPolicy()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setSpinner(III[II)V

    .line 507
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->getCapability(I)I

    move-result v6

    .line 508
    .local v6, capability:I
    packed-switch v6, :pswitch_data_0

    .line 523
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mSelectionListAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x7f0c00b7

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 525
    :goto_4
    invoke-direct {p0, v6}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setIncomingSpinner(I)V

    .line 529
    const/4 v10, 0x0

    .local v10, svc:I
    :goto_5
    const/4 v0, 0x1

    if-gt v10, v0, :cond_4

    .line 530
    sget-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->FIELD_EDITS:[[I

    aget-object v9, v0, v10

    .line 531
    .local v9, fields:[I
    const/4 v0, 0x0

    aget v0, v9, v0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #edit:Landroid/widget/EditText;
    check-cast v8, Landroid/widget/EditText;

    .line 532
    .restart local v8       #edit:Landroid/widget/EditText;
    invoke-virtual {v8, v11}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 533
    invoke-virtual {p1, v10}, Lcom/motorola/blur/settings/EmailSettingsModel;->getUsername(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 535
    const/4 v0, 0x1

    aget v0, v9, v0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #edit:Landroid/widget/EditText;
    check-cast v8, Landroid/widget/EditText;

    .line 536
    .restart local v8       #edit:Landroid/widget/EditText;
    invoke-virtual {p1, v10}, Lcom/motorola/blur/settings/EmailSettingsModel;->getPassword(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 537
    invoke-direct {p0, v10, v8}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setCopyForYahooPassword(ILandroid/widget/EditText;)V

    .line 538
    const/4 v0, 0x2

    aget v0, v9, v0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #edit:Landroid/widget/EditText;
    check-cast v8, Landroid/widget/EditText;

    .line 539
    .restart local v8       #edit:Landroid/widget/EditText;
    new-instance v0, Lcom/motorola/blur/setup/TextLimiter;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Lcom/motorola/blur/setup/TextLimiter;-><init>(I)V

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 540
    invoke-virtual {p1, v10}, Lcom/motorola/blur/settings/EmailSettingsModel;->getServer(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 542
    const/4 v0, 0x3

    aget v0, v9, v0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #edit:Landroid/widget/EditText;
    check-cast v8, Landroid/widget/EditText;

    .line 543
    .restart local v8       #edit:Landroid/widget/EditText;
    invoke-virtual {p1, v10}, Lcom/motorola/blur/settings/EmailSettingsModel;->getPort(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 529
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 480
    .end local v6           #capability:I
    .end local v9           #fields:[I
    .end local v10           #svc:I
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 484
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 488
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 492
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 510
    .restart local v6       #capability:I
    :pswitch_0
    invoke-virtual {p1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getRetentionPolicy()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setImapRetentionSpinner(I)V

    .line 511
    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 512
    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 516
    :pswitch_1
    invoke-virtual {p1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getRetentionPolicy()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setPopRetentionSpinner(I)V

    .line 517
    const v1, 0x7f0b0099

    const v2, 0x7f0b009a

    const v3, 0x7f0c00a3

    sget-object v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->POP_AUTH_CHOICES:[I

    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getIncomingAuthPolicy()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setSpinner(III[II)V

    goto/16 :goto_4

    .line 545
    .restart local v10       #svc:I
    :cond_4
    return-void

    .line 508
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getIncomingAuthPolicy()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 677
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getAuthenticationType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 682
    const/4 v0, 0x1

    :goto_0
    return v0

    :pswitch_0
    move v0, v1

    .line 679
    goto :goto_0

    .line 677
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method private getOutgoingAuthPolicy()I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 649
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getAuthenticationType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    .line 656
    :goto_0
    return v0

    .line 651
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 653
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 649
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method private handleAuthResponse(I)V
    .locals 1
    .parameter "responseError"

    .prologue
    .line 194
    packed-switch p1, :pswitch_data_0

    .line 225
    :pswitch_0
    const v0, 0x7f0c00f3

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 196
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :pswitch_2
    const v0, 0x7f0c00da

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :pswitch_3
    const v0, 0x7f0c00db

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :pswitch_4
    const v0, 0x7f0c00dc

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :pswitch_5
    const v0, 0x7f0c00dd

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :pswitch_6
    const v0, 0x7f0c00fa

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :pswitch_7
    const v0, 0x7f0c00d9

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->verificationFinishedUI(Ljava/lang/String;)V

    goto :goto_0

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private resetGeneralSettings()V
    .locals 3

    .prologue
    .line 981
    iget-object v1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    .line 983
    .local v1, model:Lcom/motorola/blur/settings/EmailSettingsModel;
    const v2, 0x7f0b0089

    invoke-virtual {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 984
    .local v0, edit:Landroid/widget/EditText;
    invoke-virtual {v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getEmailAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 987
    const v2, 0x7f0b0087

    invoke-virtual {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #edit:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 988
    .restart local v0       #edit:Landroid/widget/EditText;
    invoke-virtual {v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getUserPrettyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 991
    const v2, 0x7f0b0085

    invoke-virtual {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #edit:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 992
    .restart local v0       #edit:Landroid/widget/EditText;
    invoke-virtual {v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getAccountPrettyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 993
    return-void
.end method

.method private resetIncomingAdvanced()V
    .locals 15

    .prologue
    const v14, 0x7f0b009a

    const v13, 0x7f0b0099

    const/16 v12, 0x8

    const/4 v1, 0x1

    const/4 v11, 0x0

    .line 1005
    iget-object v10, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    .line 1007
    .local v10, model:Lcom/motorola/blur/settings/EmailSettingsModel;
    sget-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->FIELD_EDITS:[[I

    aget-object v9, v0, v11

    .line 1008
    .local v9, fields:[I
    const/4 v0, 0x3

    aget v0, v9, v0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 1009
    .local v8, edit:Landroid/widget/EditText;
    invoke-virtual {v10, v11}, Lcom/motorola/blur/settings/EmailSettingsModel;->getPort(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 1012
    .local v7, check:Landroid/widget/CheckBox;
    invoke-virtual {v10, v11}, Lcom/motorola/blur/settings/EmailSettingsModel;->getSecure(I)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1014
    const v0, 0x7f0b009b

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7           #check:Landroid/widget/CheckBox;
    check-cast v7, Landroid/widget/CheckBox;

    .line 1015
    .restart local v7       #check:Landroid/widget/CheckBox;
    invoke-virtual {v10, v11}, Lcom/motorola/blur/settings/EmailSettingsModel;->getVerifyCA(I)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v7, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1017
    const v1, 0x7f0b0097

    const v2, 0x7f0b0098

    const v3, 0x7f0c00a2

    sget-object v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->TLS_CHOICES:[I

    invoke-virtual {v10, v11}, Lcom/motorola/blur/settings/EmailSettingsModel;->getSecurityPolicy(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setSpinner(III[II)V

    .line 1021
    invoke-virtual {v10, v11}, Lcom/motorola/blur/settings/EmailSettingsModel;->getCapability(I)I

    move-result v6

    .line 1022
    .local v6, capability:I
    packed-switch v6, :pswitch_data_0

    .line 1034
    :goto_2
    return-void

    .end local v6           #capability:I
    :cond_0
    move v0, v11

    .line 1012
    goto :goto_0

    :cond_1
    move v0, v11

    .line 1015
    goto :goto_1

    .line 1024
    .restart local v6       #capability:I
    :pswitch_0
    invoke-virtual {p0, v13}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1025
    invoke-virtual {p0, v14}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1029
    :pswitch_1
    const v3, 0x7f0c00a3

    sget-object v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->POP_AUTH_CHOICES:[I

    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getIncomingAuthPolicy()I

    move-result v5

    move-object v0, p0

    move v1, v13

    move v2, v14

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setSpinner(III[II)V

    goto :goto_2

    .line 1022
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetIncomingOutgoingFields(I)V
    .locals 4
    .parameter "svc"

    .prologue
    .line 1064
    iget-object v2, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    .line 1065
    .local v2, model:Lcom/motorola/blur/settings/EmailSettingsModel;
    sget-object v3, Lcom/motorola/blur/settings/EditEmailAccountActivity;->FIELD_EDITS:[[I

    aget-object v1, v3, p1

    .line 1066
    .local v1, fields:[I
    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1067
    .local v0, edit:Landroid/widget/EditText;
    invoke-virtual {v2, p1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getUsername(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #edit:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 1070
    .restart local v0       #edit:Landroid/widget/EditText;
    invoke-virtual {v2, p1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getPassword(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    const/4 v3, 0x2

    aget v3, v1, v3

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #edit:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 1073
    .restart local v0       #edit:Landroid/widget/EditText;
    invoke-virtual {v2, p1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getServer(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    return-void
.end method

.method private resetIncomingSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 996
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    .line 997
    .local v0, model:Lcom/motorola/blur/settings/EmailSettingsModel;
    invoke-virtual {v0, v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->getCapability(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setIncomingSpinner(I)V

    .line 998
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->resetIncomingAdvanced()V

    .line 999
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->resetOtherSettings()V

    .line 1000
    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->resetIncomingOutgoingFields(I)V

    .line 1001
    return-void
.end method

.method private resetOtherSettings()V
    .locals 4

    .prologue
    .line 1078
    iget-object v1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    .line 1079
    .local v1, model:Lcom/motorola/blur/settings/EmailSettingsModel;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->getCapability(I)I

    move-result v0

    .line 1080
    .local v0, capability:I
    packed-switch v0, :pswitch_data_0

    .line 1090
    iget-object v2, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mSelectionListAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x7f0c00b7

    invoke-virtual {p0, v3}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 1093
    :goto_0
    return-void

    .line 1082
    :pswitch_0
    invoke-virtual {v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getRetentionPolicy()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setImapRetentionSpinner(I)V

    goto :goto_0

    .line 1086
    :pswitch_1
    invoke-virtual {v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getRetentionPolicy()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setPopRetentionSpinner(I)V

    goto :goto_0

    .line 1080
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private resetOutgoingAdvanced()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1042
    iget-object v9, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    .line 1044
    .local v9, model:Lcom/motorola/blur/settings/EmailSettingsModel;
    sget-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->FIELD_EDITS:[[I

    aget-object v8, v0, v5

    .line 1045
    .local v8, fields:[I
    const/4 v0, 0x3

    aget v0, v8, v0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    .line 1046
    .local v7, edit:Landroid/widget/EditText;
    invoke-virtual {v9, v5}, Lcom/motorola/blur/settings/EmailSettingsModel;->getPort(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    const v0, 0x7f0b00a7

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 1049
    .local v6, check:Landroid/widget/CheckBox;
    invoke-virtual {v9, v5}, Lcom/motorola/blur/settings/EmailSettingsModel;->getSecure(I)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v5

    :goto_0
    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1051
    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #check:Landroid/widget/CheckBox;
    check-cast v6, Landroid/widget/CheckBox;

    .line 1052
    .restart local v6       #check:Landroid/widget/CheckBox;
    invoke-virtual {v9, v5}, Lcom/motorola/blur/settings/EmailSettingsModel;->getVerifyCA(I)I

    move-result v0

    if-lez v0, :cond_1

    move v0, v5

    :goto_1
    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1054
    const v1, 0x7f0b00a8

    const v2, 0x7f0b00a9

    const v3, 0x7f0c00a2

    sget-object v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->TLS_CHOICES:[I

    invoke-virtual {v9, v5}, Lcom/motorola/blur/settings/EmailSettingsModel;->getSecurityPolicy(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setSpinner(III[II)V

    .line 1058
    const v1, 0x7f0b00aa

    const v2, 0x7f0b00ab

    const v3, 0x7f0c00a3

    sget-object v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->SMTP_AUTH_CHOICES:[I

    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getOutgoingAuthPolicy()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setSpinner(III[II)V

    .line 1061
    return-void

    :cond_0
    move v0, v1

    .line 1049
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1052
    goto :goto_1
.end method

.method private resetOutgoingSettings()V
    .locals 1

    .prologue
    .line 1037
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->resetOutgoingAdvanced()V

    .line 1038
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->resetIncomingOutgoingFields(I)V

    .line 1039
    return-void
.end method

.method private save(Z)Ljava/lang/String;
    .locals 2
    .parameter "isYahooAcnt"

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->validateEntries()Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, error:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->isPasswordUpdated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 724
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->save()Z

    .line 726
    :cond_1
    return-object v0
.end method

.method private saveOtherSettings()V
    .locals 4

    .prologue
    .line 841
    const v2, 0x7f0b00b0

    invoke-virtual {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 842
    .local v1, spinner:Landroid/widget/Spinner;
    iget-object v2, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/motorola/blur/settings/EmailSettingsModel;->setRetentionPolicy(I)V

    .line 843
    const v2, 0x7f0b00b1

    invoke-virtual {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 844
    .local v0, check:Landroid/widget/CheckBox;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 845
    iget-object v2, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Lcom/motorola/blur/settings/EmailSettingsModel;->setDelPolicy(I)V

    .line 847
    :cond_0
    return-void

    .line 845
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setCopyForYahooPassword(ILandroid/widget/EditText;)V
    .locals 1
    .parameter "svc"
    .parameter "edit"

    .prologue
    .line 548
    new-instance v0, Lcom/motorola/blur/setup/PasswordEmptyWatcher;

    invoke-direct {v0, p2}, Lcom/motorola/blur/setup/PasswordEmptyWatcher;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 549
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->isYahooAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    new-instance v0, Lcom/motorola/blur/settings/EditEmailAccountActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/motorola/blur/settings/EditEmailAccountActivity$4;-><init>(Lcom/motorola/blur/settings/EditEmailAccountActivity;I)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 569
    :cond_0
    return-void
.end method

.method private setImapPort(Ljava/lang/String;ZLandroid/widget/EditText;)V
    .locals 3
    .parameter "currentPort"
    .parameter "checked"
    .parameter "edit"

    .prologue
    const-string v2, "993"

    const-string v1, "143"

    .line 1173
    if-nez p2, :cond_1

    const-string v0, "993"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1174
    const-string v0, "143"

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    :cond_0
    :goto_0
    return-void

    .line 1175
    :cond_1
    if-eqz p2, :cond_0

    const-string v0, "143"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    const-string v0, "993"

    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setImapRetentionSpinner(I)V
    .locals 6
    .parameter "retentionPolicy"

    .prologue
    .line 702
    const v1, 0x7f0b00af

    const v2, 0x7f0b00b0

    const v3, 0x7f0c00b9

    sget-object v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->IMAP_RETENTION_CHOICES:[I

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    move v5, p1

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setSpinner(III[II)V

    .line 704
    const v0, 0x7f0b00b1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 705
    return-void

    .line 702
    :cond_0
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0
.end method

.method private setIncomingAuthPolicy(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 687
    packed-switch p1, :pswitch_data_0

    .line 693
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->setAuthenticationType(II)V

    .line 696
    :goto_0
    return-void

    .line 689
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    const/16 v1, 0x14

    invoke-virtual {v0, v2, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->setAuthenticationType(II)V

    goto :goto_0

    .line 687
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private setIncomingSpinner(I)V
    .locals 7
    .parameter "capability"

    .prologue
    .line 574
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v0, p0, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 576
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x109000a

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 577
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 578
    .local v3, resources:Landroid/content/res/Resources;
    sget-object v6, Lcom/motorola/blur/settings/EditEmailAccountActivity;->INCOMING_SERVER_CHOICE_IDS:[I

    array-length v2, v6

    .line 579
    .local v2, numChoices:I
    const/4 v5, 0x0

    .line 580
    .local v5, spinnerPos:I
    const/4 v1, 0x0

    .local v1, counter:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 581
    sget-object v6, Lcom/motorola/blur/settings/EditEmailAccountActivity;->INCOMING_SERVER_CAPABILITIES:[I

    aget v6, v6, v1

    if-ne v6, p1, :cond_0

    .line 582
    move v5, v1

    .line 584
    :cond_0
    sget-object v6, Lcom/motorola/blur/settings/EditEmailAccountActivity;->INCOMING_SERVER_CHOICE_IDS:[I

    aget v6, v6, v1

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 580
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    :cond_1
    const v6, 0x7f0b008b

    invoke-virtual {p0, v6}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 588
    .local v4, spinner:Landroid/widget/Spinner;
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 589
    if-lez v5, :cond_2

    .line 590
    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 592
    :cond_2
    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 593
    return-void
.end method

.method private setOutgoingAuthPolicy(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 661
    const/4 v0, 0x1

    .line 662
    .local v0, svc:I
    packed-switch p1, :pswitch_data_0

    .line 671
    :pswitch_0
    iget-object v1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->setAuthenticationType(II)V

    .line 674
    :goto_0
    return-void

    .line 664
    :pswitch_1
    iget-object v1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->setAuthenticationType(II)V

    goto :goto_0

    .line 667
    :pswitch_2
    iget-object v1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    const/16 v2, 0xa

    invoke-virtual {v1, v0, v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->setAuthenticationType(II)V

    goto :goto_0

    .line 662
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setPopPort(Ljava/lang/String;ZLandroid/widget/EditText;)V
    .locals 3
    .parameter "currentPort"
    .parameter "checked"
    .parameter "edit"

    .prologue
    const-string v2, "995"

    const-string v1, "110"

    .line 1165
    if-nez p2, :cond_1

    const-string v0, "995"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1166
    const-string v0, "110"

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    if-eqz p2, :cond_0

    const-string v0, "110"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1168
    const-string v0, "995"

    invoke-virtual {p3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPopRetentionSpinner(I)V
    .locals 9
    .parameter "retentionPolicy"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 711
    const v1, 0x7f0b00af

    const v2, 0x7f0b00b0

    const v3, 0x7f0c00ba

    sget-object v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->POP_RETENTION_CHOICES:[I

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    move v5, p1

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setSpinner(III[II)V

    .line 713
    const v0, 0x7f0b00b1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 714
    .local v6, check:Landroid/widget/CheckBox;
    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->getDelPolicy()I

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v8

    :goto_1
    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 716
    return-void

    .line 711
    .end local v6           #check:Landroid/widget/CheckBox;
    :cond_0
    const/4 v0, 0x2

    move v5, v0

    goto :goto_0

    .restart local v6       #check:Landroid/widget/CheckBox;
    :cond_1
    move v0, v7

    .line 715
    goto :goto_1
.end method

.method private setSpinner(III[II)V
    .locals 9
    .parameter "labelView"
    .parameter "spinnerView"
    .parameter "labelId"
    .parameter "choices"
    .parameter "defaultChoice"

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 597
    .local v6, text:Landroid/widget/TextView;
    invoke-virtual {v6, p3}, Landroid/widget/TextView;->setText(I)V

    .line 598
    invoke-virtual {p0, p2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 599
    .local v5, spinner:Landroid/widget/Spinner;
    array-length v3, p4

    .line 600
    .local v3, numChoices:I
    new-array v1, v3, [Ljava/lang/String;

    .line 601
    .local v1, choiceNames:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 603
    .local v4, resources:Landroid/content/res/Resources;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 604
    aget v7, p4, v2

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    .line 603
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 606
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v7, 0x1090008

    const v8, 0x1020014

    invoke-direct {v0, p0, v7, v8, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 610
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v7, 0x109000a

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 612
    invoke-virtual {v5, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 613
    invoke-virtual {v5, p5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 614
    return-void
.end method

.method private setViewMode(I)V
    .locals 14
    .parameter "settingsMode"

    .prologue
    const v13, 0x7f0b0093

    const v12, 0x7f0b008a

    const v10, 0x7f0b0083

    const v9, 0x7f0b0081

    const/4 v11, 0x1

    .line 301
    const/4 v5, 0x0

    .line 302
    .local v5, oldView:Landroid/view/View;
    iget v8, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mSettingsViewMode:I

    packed-switch v8, :pswitch_data_0

    .line 327
    :goto_0
    if-eqz v5, :cond_0

    .line 328
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 330
    :cond_0
    iput p1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mSettingsViewMode:I

    .line 332
    const/4 v3, 0x0

    .line 333
    .local v3, mainView:Landroid/view/View;
    const/4 v7, 0x0

    .line 336
    .local v7, titleResource:I
    packed-switch p1, :pswitch_data_1

    .line 364
    const v7, 0x7f0c0138

    .line 365
    invoke-virtual {p0, v10}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 369
    :goto_1
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 371
    const v8, 0x7f0b0080

    invoke-virtual {p0, v8}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 372
    .local v6, title:Landroid/widget/TextView;
    iget-object v8, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v8}, Lcom/motorola/blur/settings/EmailSettingsModel;->getAccountPrettyName()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, accountPrettyName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 374
    iget-object v8, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v8}, Lcom/motorola/blur/settings/EmailSettingsModel;->getUserPrettyName()Ljava/lang/String;

    move-result-object v0

    .line 376
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 377
    iget-object v8, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v8}, Lcom/motorola/blur/settings/EmailSettingsModel;->getEmailAddress()Ljava/lang/String;

    move-result-object v0

    .line 379
    :cond_2
    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "{0}"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, ""

    :goto_2
    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    const/4 v4, -0x1

    .line 382
    .local v4, modelMode:I
    const/4 v8, 0x2

    if-ne p1, v8, :cond_6

    .line 383
    const/4 v4, 0x1

    .line 386
    :cond_3
    :goto_3
    const/4 v8, -0x1

    if-eq v4, v8, :cond_4

    .line 388
    sget-object v8, Lcom/motorola/blur/settings/EditEmailAccountActivity;->FIELD_EDITS:[[I

    aget-object v2, v8, v4

    .line 389
    .local v2, fields:[I
    aget v8, v2, v11

    invoke-virtual {p0, v8}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 390
    .local v1, edit:Landroid/widget/EditText;
    iget-object v8, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v8, v4}, Lcom/motorola/blur/settings/EmailSettingsModel;->getPassword(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 392
    .end local v1           #edit:Landroid/widget/EditText;
    .end local v2           #fields:[I
    :cond_4
    return-void

    .line 305
    .end local v0           #accountPrettyName:Ljava/lang/String;
    .end local v3           #mainView:Landroid/view/View;
    .end local v4           #modelMode:I
    .end local v6           #title:Landroid/widget/TextView;
    .end local v7           #titleResource:I
    :pswitch_0
    invoke-virtual {p0, v9}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 306
    goto :goto_0

    .line 308
    :pswitch_1
    invoke-virtual {p0, v12}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 309
    goto :goto_0

    .line 311
    :pswitch_2
    const v8, 0x7f0b009c

    invoke-virtual {p0, v8}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 312
    goto/16 :goto_0

    .line 314
    :pswitch_3
    const v8, 0x7f0b00ad

    invoke-virtual {p0, v8}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 315
    goto/16 :goto_0

    .line 317
    :pswitch_4
    invoke-virtual {p0, v10}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 318
    goto/16 :goto_0

    .line 320
    :pswitch_5
    invoke-virtual {p0, v13}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 321
    goto/16 :goto_0

    .line 323
    :pswitch_6
    const v8, 0x7f0b00a4

    invoke-virtual {p0, v8}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    goto/16 :goto_0

    .line 339
    .restart local v3       #mainView:Landroid/view/View;
    .restart local v7       #titleResource:I
    :pswitch_7
    const v7, 0x7f0c0137

    .line 340
    invoke-virtual {p0, v9}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 341
    goto/16 :goto_1

    .line 343
    :pswitch_8
    const v7, 0x7f0c0139

    .line 344
    invoke-virtual {p0, v12}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 345
    goto/16 :goto_1

    .line 347
    :pswitch_9
    const v7, 0x7f0c013a

    .line 348
    invoke-virtual {p0, v13}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 349
    goto/16 :goto_1

    .line 351
    :pswitch_a
    const v7, 0x7f0c013b

    .line 352
    const v8, 0x7f0b009c

    invoke-virtual {p0, v8}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 353
    goto/16 :goto_1

    .line 355
    :pswitch_b
    const v7, 0x7f0c013d

    .line 356
    const v8, 0x7f0b00a4

    invoke-virtual {p0, v8}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 357
    goto/16 :goto_1

    .line 359
    :pswitch_c
    const v7, 0x7f0c013c

    .line 360
    const v8, 0x7f0b00ad

    invoke-virtual {p0, v8}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 361
    goto/16 :goto_1

    .restart local v0       #accountPrettyName:Ljava/lang/String;
    .restart local v6       #title:Landroid/widget/TextView;
    :cond_5
    move-object v10, v0

    .line 379
    goto/16 :goto_2

    .line 384
    .restart local v4       #modelMode:I
    :cond_6
    if-ne p1, v11, :cond_3

    .line 385
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 336
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_a
        :pswitch_c
        :pswitch_7
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method private setupProgressDialog()V
    .locals 5

    .prologue
    .line 1244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 1245
    new-instance v0, Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/SetupProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    .line 1246
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    sget-object v1, Lcom/motorola/blur/settings/EditEmailAccountActivity;->PROGRESS_POINTS:[I

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressPoints([I)V

    .line 1247
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v4}, Lcom/motorola/blur/settings/EmailSettingsModel;->getAccountPrettyName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/SetupProgressDialog;->setProgressText(Ljava/lang/String;)V

    .line 1249
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mProgressDialog:Lcom/motorola/blur/setup/SetupProgressDialog;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->show()V

    .line 1250
    return-void
.end method

.method private showWarning(Landroid/widget/CompoundButton;)V
    .locals 3
    .parameter "button"

    .prologue
    .line 1230
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0101

    invoke-virtual {p0, v1}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0067

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0068

    new-instance v2, Lcom/motorola/blur/settings/EditEmailAccountActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/motorola/blur/settings/EditEmailAccountActivity$5;-><init>(Lcom/motorola/blur/settings/EditEmailAccountActivity;Landroid/widget/CompoundButton;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1241
    return-void
.end method

.method private validateCurrentViewModeEntries()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 912
    iget-object v1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    .line 913
    .local v1, model:Lcom/motorola/blur/settings/EmailSettingsModel;
    invoke-virtual {v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->clearError()V

    .line 914
    const/4 v2, 0x4

    .line 915
    .local v2, newView:I
    iget v5, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mSettingsViewMode:I

    packed-switch v5, :pswitch_data_0

    .line 944
    :goto_0
    :pswitch_0
    invoke-virtual {v1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getError()Ljava/lang/String;

    move-result-object v0

    .line 945
    .local v0, error:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 946
    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->createSimpleAlertDialog(Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 951
    :goto_1
    return-void

    .line 917
    .end local v0           #error:Ljava/lang/String;
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->validateGeneralSettings()V

    goto :goto_0

    .line 920
    :pswitch_2
    const v5, 0x7f0c00b7

    invoke-virtual {p0, v5}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 921
    .local v3, otherString:Ljava/lang/String;
    iget-object v4, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mSelectionListAdapter:Landroid/widget/ArrayAdapter;

    .line 922
    .local v4, selectionListAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_0

    .line 923
    invoke-virtual {v4, v6}, Landroid/widget/ArrayAdapter;->setNotifyOnChange(Z)V

    .line 924
    invoke-virtual {v4, v3}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 926
    :cond_0
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->validateIncomingOutgoingSettings(I)V

    goto :goto_0

    .line 929
    .end local v3           #otherString:Ljava/lang/String;
    .end local v4           #selectionListAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :pswitch_3
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->validateIncomingAdvanced()V

    .line 930
    const/4 v2, 0x1

    .line 931
    goto :goto_0

    .line 933
    :pswitch_4
    invoke-direct {p0, v6}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->validateIncomingOutgoingSettings(I)V

    goto :goto_0

    .line 936
    :pswitch_5
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->validateOutgoingAdvanced()V

    .line 937
    const/4 v2, 0x2

    .line 938
    goto :goto_0

    .line 940
    :pswitch_6
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->saveOtherSettings()V

    goto :goto_0

    .line 949
    .restart local v0       #error:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setViewMode(I)V

    goto :goto_1

    .line 915
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private final validateEntries()Ljava/lang/String;
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    .line 733
    .local v0, model:Lcom/motorola/blur/settings/EmailSettingsModel;
    invoke-virtual {v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->clearError()V

    .line 735
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->validateIncomingOutgoingSettings(I)V

    .line 736
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->validateIncomingOutgoingSettings(I)V

    .line 738
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->validateGeneralSettings()V

    .line 740
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->saveOtherSettings()V

    .line 742
    invoke-virtual {v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->getError()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private validateGeneralSettings()V
    .locals 3

    .prologue
    .line 747
    iget-object v1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    .line 748
    .local v1, model:Lcom/motorola/blur/settings/EmailSettingsModel;
    const v2, 0x7f0b0089

    invoke-virtual {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 749
    .local v0, edit:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->validateEmail(Landroid/text/Editable;)V

    .line 751
    const v2, 0x7f0b0085

    invoke-virtual {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #edit:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 752
    .restart local v0       #edit:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->validateAccountName(Landroid/text/Editable;)V

    .line 754
    const v2, 0x7f0b0087

    invoke-virtual {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #edit:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 755
    .restart local v0       #edit:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->validateUserPrettyName(Landroid/text/Editable;)V

    .line 756
    return-void
.end method

.method private validateIncomingAdvanced()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 793
    iget-object v3, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    .line 794
    .local v3, model:Lcom/motorola/blur/settings/EmailSettingsModel;
    const/4 v5, 0x0

    .line 795
    .local v5, svc:I
    sget-object v6, Lcom/motorola/blur/settings/EditEmailAccountActivity;->FIELD_EDITS:[[I

    aget-object v2, v6, v5

    .line 796
    .local v2, fields:[I
    const/4 v6, 0x3

    aget v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 797
    .local v1, edit:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/motorola/blur/settings/EmailSettingsModel;->validatePort(ILandroid/text/Editable;)V

    .line 799
    const v6, 0x7f0b0096

    invoke-virtual {p0, v6}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 800
    .local v0, check:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v8

    :goto_0
    invoke-virtual {v3, v5, v6}, Lcom/motorola/blur/settings/EmailSettingsModel;->setSecure(II)V

    .line 802
    const v6, 0x7f0b009b

    invoke-virtual {p0, v6}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #check:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 803
    .restart local v0       #check:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v8

    :goto_1
    invoke-virtual {v3, v5, v6}, Lcom/motorola/blur/settings/EmailSettingsModel;->setVerifyCA(II)V

    .line 805
    const v6, 0x7f0b0098

    invoke-virtual {p0, v6}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 806
    .local v4, spinner:Landroid/widget/Spinner;
    iget-object v6, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/motorola/blur/settings/EmailSettingsModel;->setSecurityPolicy(II)V

    .line 808
    const v6, 0x7f0b009a

    invoke-virtual {p0, v6}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #spinner:Landroid/widget/Spinner;
    check-cast v4, Landroid/widget/Spinner;

    .line 809
    .restart local v4       #spinner:Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/Spinner;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    .line 810
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setIncomingAuthPolicy(I)V

    .line 814
    :goto_2
    const v6, 0x7f0b00b0

    invoke-virtual {p0, v6}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #spinner:Landroid/widget/Spinner;
    check-cast v4, Landroid/widget/Spinner;

    .line 815
    .restart local v4       #spinner:Landroid/widget/Spinner;
    iget-object v6, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/motorola/blur/settings/EmailSettingsModel;->setRetentionPolicy(I)V

    .line 816
    return-void

    .end local v4           #spinner:Landroid/widget/Spinner;
    :cond_0
    move v6, v7

    .line 800
    goto :goto_0

    :cond_1
    move v6, v7

    .line 803
    goto :goto_1

    .line 812
    .restart local v4       #spinner:Landroid/widget/Spinner;
    :cond_2
    invoke-virtual {v3, v5, v8}, Lcom/motorola/blur/settings/EmailSettingsModel;->setAuthenticationType(II)V

    goto :goto_2
.end method

.method private validateIncomingOutgoingSettings(I)V
    .locals 6
    .parameter "svc"

    .prologue
    .line 760
    iget-object v2, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    .line 762
    .local v2, model:Lcom/motorola/blur/settings/EmailSettingsModel;
    sget-object v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->FIELD_EDITS:[[I

    aget-object v1, v4, p1

    .line 763
    .local v1, fields:[I
    const/4 v4, 0x0

    aget v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 764
    .local v0, edit:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/motorola/blur/settings/EmailSettingsModel;->validateUsername(ILandroid/text/Editable;)V

    .line 766
    const/4 v4, 0x1

    aget v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #edit:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 767
    .restart local v0       #edit:Landroid/widget/EditText;
    iget-object v4, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v4}, Lcom/motorola/blur/settings/EmailSettingsModel;->isYahooAccount()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 768
    iget-object v4, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v4, p1}, Lcom/motorola/blur/settings/EmailSettingsModel;->getPassword(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 770
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/motorola/blur/settings/EmailSettingsModel;->validatePassword(ILandroid/text/Editable;)V

    .line 772
    const/4 v4, 0x2

    aget v4, v1, v4

    invoke-virtual {p0, v4}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #edit:Landroid/widget/EditText;
    check-cast v0, Landroid/widget/EditText;

    .line 773
    .restart local v0       #edit:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Lcom/motorola/blur/settings/EmailSettingsModel;->validateServer(ILandroid/text/Editable;)V

    .line 775
    packed-switch p1, :pswitch_data_0

    .line 789
    :goto_0
    return-void

    .line 777
    :pswitch_0
    const v4, 0x7f0b008b

    invoke-virtual {p0, v4}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 778
    .local v3, spinner:Landroid/widget/Spinner;
    invoke-virtual {v3}, Landroid/widget/Spinner;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 779
    sget-object v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->INCOMING_SERVER_CAPABILITIES:[I

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    aget v4, v4, v5

    invoke-virtual {v2, p1, v4}, Lcom/motorola/blur/settings/EmailSettingsModel;->setCapability(II)V

    .line 782
    :cond_1
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->validateIncomingAdvanced()V

    goto :goto_0

    .line 786
    .end local v3           #spinner:Landroid/widget/Spinner;
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->validateOutgoingAdvanced()V

    goto :goto_0

    .line 775
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private validateOutgoingAdvanced()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 820
    iget-object v3, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    .line 821
    .local v3, model:Lcom/motorola/blur/settings/EmailSettingsModel;
    const/4 v5, 0x1

    .line 823
    .local v5, svc:I
    sget-object v6, Lcom/motorola/blur/settings/EditEmailAccountActivity;->FIELD_EDITS:[[I

    aget-object v2, v6, v7

    .line 824
    .local v2, fields:[I
    const/4 v6, 0x3

    aget v6, v2, v6

    invoke-virtual {p0, v6}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 825
    .local v1, edit:Landroid/widget/EditText;
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/motorola/blur/settings/EmailSettingsModel;->validatePort(ILandroid/text/Editable;)V

    .line 827
    const v6, 0x7f0b00a7

    invoke-virtual {p0, v6}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 828
    .local v0, check:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    :goto_0
    invoke-virtual {v3, v5, v6}, Lcom/motorola/blur/settings/EmailSettingsModel;->setSecure(II)V

    .line 830
    const v6, 0x7f0b00ac

    invoke-virtual {p0, v6}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #check:Landroid/widget/CheckBox;
    check-cast v0, Landroid/widget/CheckBox;

    .line 831
    .restart local v0       #check:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_1
    invoke-virtual {v3, v5, v6}, Lcom/motorola/blur/settings/EmailSettingsModel;->setVerifyCA(II)V

    .line 833
    const v6, 0x7f0b00a9

    invoke-virtual {p0, v6}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 834
    .local v4, spinner:Landroid/widget/Spinner;
    iget-object v6, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/motorola/blur/settings/EmailSettingsModel;->setSecurityPolicy(II)V

    .line 836
    const v6, 0x7f0b00ab

    invoke-virtual {p0, v6}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4           #spinner:Landroid/widget/Spinner;
    check-cast v4, Landroid/widget/Spinner;

    .line 837
    .restart local v4       #spinner:Landroid/widget/Spinner;
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setOutgoingAuthPolicy(I)V

    .line 838
    return-void

    .end local v4           #spinner:Landroid/widget/Spinner;
    :cond_0
    move v6, v8

    .line 828
    goto :goto_0

    :cond_1
    move v6, v8

    .line 831
    goto :goto_1
.end method

.method private verificationFinishedUI(Ljava/lang/String;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 230
    if-nez p1, :cond_0

    .line 232
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->save()Z

    .line 233
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->dismissDialog()V

    .line 234
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->finish()V

    .line 243
    :goto_0
    return-void

    .line 236
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c008e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 241
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->dismissDialog()V

    goto :goto_0
.end method


# virtual methods
.method public layOutActivity(JI)V
    .locals 10
    .parameter "accountId"
    .parameter "settingsMode"

    .prologue
    .line 247
    const v7, 0x7f030020

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setContentView(I)V

    .line 249
    const v7, 0x7f0b0011

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 251
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v7, 0x7f0c007f

    const v8, 0x7f0b0003

    invoke-static {p0, v7, v8}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v5

    .line 252
    .local v5, okButton:Landroid/widget/Button;
    const v7, 0x7f0c0057

    const v8, 0x7f0b0004

    invoke-static {p0, v7, v8}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v3

    .line 253
    .local v3, cancelButton:Landroid/widget/Button;
    invoke-virtual {v0, v5}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 254
    invoke-virtual {v0, v3}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 256
    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    const v7, 0x7f0b0092

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 260
    .local v2, button:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    const v7, 0x7f0b00a3

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #button:Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .line 262
    .restart local v2       #button:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    const v7, 0x7f030039

    const/4 v8, 0x0

    invoke-static {p0, v7, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 265
    .local v6, removeAccountButtonLayout:Landroid/widget/LinearLayout;
    const v7, 0x7f0b00e2

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #button:Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .line 266
    .restart local v2       #button:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    const-wide/16 v7, 0x0

    cmp-long v7, p1, v7

    if-nez v7, :cond_0

    .line 268
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 270
    :cond_0
    const v7, 0x7f0b0082

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 271
    .local v4, list:Landroid/widget/ListView;
    invoke-virtual {v4, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 273
    iget-object v7, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mSelectionListAdapter:Landroid/widget/ArrayAdapter;

    if-nez v7, :cond_1

    .line 275
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f030023

    const v9, 0x7f0b00b7

    invoke-direct {v1, v7, v8, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 276
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v7, 0x7f0c00b8

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 277
    const v7, 0x7f0c00b5

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 278
    const v7, 0x7f0c00b6

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 279
    const v7, 0x7f0c00b7

    invoke-virtual {p0, v7}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 280
    iput-object v1, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mSelectionListAdapter:Landroid/widget/ArrayAdapter;

    .line 282
    .end local v1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    iget-object v7, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mSelectionListAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    new-instance v7, Lcom/motorola/blur/settings/EditEmailAccountActivity$3;

    invoke-direct {v7, p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity$3;-><init>(Lcom/motorola/blur/settings/EditEmailAccountActivity;)V

    invoke-virtual {v4, v7}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 293
    invoke-direct {p0, p3}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setViewMode(I)V

    .line 295
    iget-object v7, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-direct {p0, v7}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->fillFieldsWithModel(Lcom/motorola/blur/settings/EmailSettingsModel;)V

    .line 296
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1157
    iget v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mSettingsViewMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1158
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->clearCurrentViewModeEntries()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setViewMode(I)V

    .line 1162
    :goto_0
    return-void

    .line 1161
    :cond_0
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .parameter "button"
    .parameter "checked"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const-string v8, "465"

    const-string v5, "25"

    .line 1186
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1227
    :cond_0
    :goto_0
    return-void

    .line 1188
    :sswitch_0
    iget-object v4, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/motorola/blur/settings/EmailSettingsModel;->getCapability(I)I

    move-result v0

    .line 1189
    .local v0, capability:I
    sget-object v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->INCOMING_FIELD_EDITS:[I

    aget v4, v4, v6

    invoke-virtual {p0, v4}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1190
    .local v2, edit:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1191
    .local v1, currentPort:Ljava/lang/String;
    :goto_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1201
    :pswitch_1
    const v4, 0x7f0b008b

    invoke-virtual {p0, v4}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 1202
    .local v3, spinner:Landroid/widget/Spinner;
    sget-object v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->INCOMING_SERVER_CAPABILITIES:[I

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 1204
    invoke-direct {p0, v1, p2, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setPopPort(Ljava/lang/String;ZLandroid/widget/EditText;)V

    goto :goto_0

    .end local v1           #currentPort:Ljava/lang/String;
    .end local v3           #spinner:Landroid/widget/Spinner;
    :cond_1
    move-object v1, v7

    .line 1190
    goto :goto_1

    .line 1193
    .restart local v1       #currentPort:Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0, v1, p2, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setImapPort(Ljava/lang/String;ZLandroid/widget/EditText;)V

    goto :goto_0

    .line 1197
    :pswitch_3
    invoke-direct {p0, v1, p2, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setPopPort(Ljava/lang/String;ZLandroid/widget/EditText;)V

    goto :goto_0

    .line 1206
    .restart local v3       #spinner:Landroid/widget/Spinner;
    :cond_2
    invoke-direct {p0, v1, p2, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setImapPort(Ljava/lang/String;ZLandroid/widget/EditText;)V

    goto :goto_0

    .line 1212
    .end local v0           #capability:I
    .end local v1           #currentPort:Ljava/lang/String;
    .end local v2           #edit:Landroid/widget/EditText;
    .end local v3           #spinner:Landroid/widget/Spinner;
    :sswitch_1
    if-nez p2, :cond_0

    .line 1213
    invoke-direct {p0, p1}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->showWarning(Landroid/widget/CompoundButton;)V

    goto :goto_0

    .line 1218
    :sswitch_2
    sget-object v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->OUTGOING_FIELD_EDITS:[I

    aget v4, v4, v6

    invoke-virtual {p0, v4}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1219
    .restart local v2       #edit:Landroid/widget/EditText;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 1220
    .restart local v1       #currentPort:Ljava/lang/String;
    :goto_2
    if-eqz p2, :cond_4

    const-string v4, "25"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1221
    const-string v4, "465"

    invoke-virtual {v2, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .end local v1           #currentPort:Ljava/lang/String;
    :cond_3
    move-object v1, v7

    .line 1219
    goto :goto_2

    .line 1222
    .restart local v1       #currentPort:Ljava/lang/String;
    :cond_4
    if-nez p2, :cond_0

    const-string v4, "465"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1223
    const-string v4, "25"

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1186
    :sswitch_data_0
    .sparse-switch
        0x7f0b0096 -> :sswitch_0
        0x7f0b009b -> :sswitch_1
        0x7f0b00a7 -> :sswitch_2
        0x7f0b00ac -> :sswitch_1
    .end sparse-switch

    .line 1191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x4

    .line 860
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 907
    :goto_0
    return-void

    .line 864
    :sswitch_0
    iget v2, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mSettingsViewMode:I

    if-ne v2, v3, :cond_3

    .line 865
    iget-object v2, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->isYahooAccount()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->save(Z)Ljava/lang/String;

    move-result-object v0

    .line 866
    .local v0, error:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 867
    iget-object v2, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->isYahooAccount()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-virtual {v2}, Lcom/motorola/blur/settings/EmailSettingsModel;->isPasswordUpdated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 868
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setupProgressDialog()V

    .line 869
    iget-object v2, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    if-eqz v2, :cond_0

    .line 870
    iget-object v2, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    invoke-interface {v2}, Lcom/motorola/blur/util/authentication/Authentication;->close()V

    .line 873
    :cond_0
    new-instance v1, Lcom/motorola/blur/service/email/provider/EmailAuthenticationFactory;

    invoke-direct {v1}, Lcom/motorola/blur/service/email/provider/EmailAuthenticationFactory;-><init>()V

    .line 875
    .local v1, factory:Lcom/motorola/blur/util/authentication/AuthenticationFactory;
    iget-object v2, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mAuthObserver:Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;

    const-string v3, "IMAP_PROTOCOL"

    invoke-interface {v1, p0, v2, v3}, Lcom/motorola/blur/util/authentication/AuthenticationFactory;->getAuthenticator(Landroid/content/Context;Lcom/motorola/blur/util/authentication/AuthenticationFactory$AuthenticationObserver;Ljava/lang/String;)Z

    goto :goto_0

    .line 877
    .end local v1           #factory:Lcom/motorola/blur/util/authentication/AuthenticationFactory;
    :cond_1
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setResult(I)V

    .line 878
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->finish()V

    goto :goto_0

    .line 881
    :cond_2
    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->createSimpleAlertDialog(Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 884
    .end local v0           #error:Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->validateCurrentViewModeEntries()V

    goto :goto_0

    .line 889
    :sswitch_1
    iget v2, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mSettingsViewMode:I

    if-eq v2, v3, :cond_4

    .line 890
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->clearCurrentViewModeEntries()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setViewMode(I)V

    goto :goto_0

    .line 892
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setResult(I)V

    .line 893
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->finish()V

    goto :goto_0

    .line 898
    :sswitch_2
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->confirmDelete()V

    goto :goto_0

    .line 901
    :sswitch_3
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setViewMode(I)V

    goto :goto_0

    .line 904
    :sswitch_4
    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setViewMode(I)V

    goto :goto_0

    .line 860
    :sswitch_data_0
    .sparse-switch
        0x7f0b0003 -> :sswitch_0
        0x7f0b0004 -> :sswitch_1
        0x7f0b0092 -> :sswitch_3
        0x7f0b00a3 -> :sswitch_4
        0x7f0b00e2 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "icicle"

    .prologue
    .line 396
    invoke-super/range {p0 .. p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 397
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 398
    .local v7, incomingIntent:Landroid/content/Intent;
    if-nez v7, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->finish()V

    .line 451
    :goto_0
    return-void

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->hideConfigMenuItems()V

    .line 405
    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 406
    .local v6, existingAccountUri:Landroid/net/Uri;
    const-wide/16 v0, 0x0

    .line 407
    .local v0, accountId:J
    if-eqz v6, :cond_1

    .line 408
    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 410
    :cond_1
    new-instance v8, Lcom/motorola/blur/settings/EmailSettingsModel;

    invoke-direct {v8, p0, v0, v1}, Lcom/motorola/blur/settings/EmailSettingsModel;-><init>(Landroid/content/Context;J)V

    .line 411
    .local v8, model:Lcom/motorola/blur/settings/EmailSettingsModel;
    const-wide/16 v12, 0x0

    cmp-long v12, v0, v12

    if-nez v12, :cond_4

    .line 412
    const-string v12, "error"

    sget-object v13, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-virtual {v13}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->toValue()I

    move-result v13

    invoke-virtual {v7, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 413
    .local v3, code:I
    invoke-static {v3}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->fromValue(I)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v5

    .line 414
    .local v5, errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    sget-object v12, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v5, v12, :cond_2

    .line 415
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v13, 0x7f0c008e

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-static {p0, v5}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x7f0c007f

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 422
    :cond_2
    const-string v12, "username"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 423
    .local v11, username:Ljava/lang/String;
    const-string v12, "password"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 427
    .local v9, password:Ljava/lang/String;
    const-string v12, "email_address"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 428
    .local v4, emailAddress:Ljava/lang/String;
    const/16 v12, 0x40

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 429
    .local v2, atPos:I
    const/4 v10, 0x0

    .line 430
    .local v10, serverDomain:Ljava/lang/String;
    if-lez v2, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v2, v12, :cond_3

    .line 431
    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 435
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 436
    const/4 v12, 0x0

    invoke-virtual {v8, v12, v10}, Lcom/motorola/blur/settings/EmailSettingsModel;->setServer(ILjava/lang/String;)V

    .line 437
    const/4 v12, 0x1

    invoke-virtual {v8, v12, v10}, Lcom/motorola/blur/settings/EmailSettingsModel;->setServer(ILjava/lang/String;)V

    .line 440
    :cond_3
    invoke-virtual {v8, v4}, Lcom/motorola/blur/settings/EmailSettingsModel;->setEmailAddress(Ljava/lang/String;)V

    .line 441
    const/4 v12, 0x0

    invoke-virtual {v8, v12, v11}, Lcom/motorola/blur/settings/EmailSettingsModel;->setUsername(ILjava/lang/String;)V

    .line 442
    const/4 v12, 0x1

    invoke-virtual {v8, v12, v11}, Lcom/motorola/blur/settings/EmailSettingsModel;->setUsername(ILjava/lang/String;)V

    .line 443
    const/4 v12, 0x0

    invoke-virtual {v8, v12, v9}, Lcom/motorola/blur/settings/EmailSettingsModel;->setPassword(ILjava/lang/String;)V

    .line 444
    const/4 v12, 0x1

    invoke-virtual {v8, v12, v9}, Lcom/motorola/blur/settings/EmailSettingsModel;->setPassword(ILjava/lang/String;)V

    .line 445
    const-string v12, "user_pretty_name"

    invoke-virtual {v7, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/motorola/blur/settings/EmailSettingsModel;->setUserPrettyName(Ljava/lang/String;)V

    .line 446
    invoke-static {v11, p0}, Lcom/motorola/blur/provider/DeviceSetup;->createPrettyName(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/motorola/blur/settings/EmailSettingsModel;->setAccountName(Ljava/lang/String;)V

    .line 448
    .end local v2           #atPos:I
    .end local v3           #code:I
    .end local v4           #emailAddress:Ljava/lang/String;
    .end local v5           #errorCode:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .end local v9           #password:Ljava/lang/String;
    .end local v10           #serverDomain:Ljava/lang/String;
    .end local v11           #username:Ljava/lang/String;
    :cond_4
    iput-object v8, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    .line 450
    const/4 v12, 0x4

    invoke-virtual {p0, v0, v1, v12}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->layOutActivity(JI)V

    goto/16 :goto_0
.end method

.method public onDeleteFinished(ZI)V
    .locals 1
    .parameter "deleted"
    .parameter "error"

    .prologue
    .line 1268
    if-eqz p1, :cond_0

    .line 1269
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setResult(I)V

    .line 1270
    invoke-virtual {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->finish()V

    .line 1272
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mErrorCode:I

    .line 1273
    return-void

    :cond_1
    move v0, p2

    .line 1272
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    if-eqz v0, :cond_0

    .line 1262
    iget-object v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;

    invoke-interface {v0}, Lcom/motorola/blur/util/authentication/Authentication;->close()V

    .line 1263
    :cond_0
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->dismissDialog()V

    .line 1264
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onDestroy()V

    .line 1265
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1116
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    .line 1117
    .local v7, defaultValues:Z
    iget-object v9, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mModel:Lcom/motorola/blur/settings/EmailSettingsModel;

    .line 1118
    .local v9, model:Lcom/motorola/blur/settings/EmailSettingsModel;
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->getCapability(I)I

    move-result v0

    sget-object v1, Lcom/motorola/blur/settings/EditEmailAccountActivity;->INCOMING_SERVER_CAPABILITIES:[I

    aget v1, v1, p3

    if-ne v0, v1, :cond_0

    .line 1119
    const/4 v7, 0x0

    .line 1121
    :cond_0
    sget-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->INCOMING_FIELD_EDITS:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    .line 1122
    .local v8, edit:Landroid/widget/EditText;
    const v0, 0x7f0b0096

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 1123
    .local v6, check:Landroid/widget/CheckBox;
    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v10

    .line 1124
    .local v10, secure:Z
    sget-object v0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->INCOMING_SERVER_CAPABILITIES:[I

    aget v0, v0, p3

    packed-switch v0, :pswitch_data_0

    .line 1147
    :goto_0
    return-void

    .line 1126
    :pswitch_0
    if-eqz v7, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setImapRetentionSpinner(I)V

    .line 1127
    if-eqz v7, :cond_3

    if-eqz v10, :cond_2

    const-string v0, "993"

    :goto_2
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1130
    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1126
    :cond_1
    invoke-virtual {v9}, Lcom/motorola/blur/settings/EmailSettingsModel;->getRetentionPolicy()I

    move-result v0

    goto :goto_1

    .line 1127
    :cond_2
    const-string v0, "143"

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->getPort(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 1134
    :pswitch_1
    if-eqz v7, :cond_4

    const/4 v0, 0x2

    :goto_3
    invoke-direct {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setPopRetentionSpinner(I)V

    .line 1135
    if-eqz v7, :cond_6

    if-eqz v10, :cond_5

    const-string v0, "995"

    :goto_4
    invoke-virtual {v8, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    const v0, 0x7f0b0099

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1138
    const v0, 0x7f0b009a

    invoke-virtual {p0, v0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1139
    const v1, 0x7f0b0099

    const v2, 0x7f0b009a

    const v3, 0x7f0c00a3

    sget-object v4, Lcom/motorola/blur/settings/EditEmailAccountActivity;->POP_AUTH_CHOICES:[I

    if-eqz v7, :cond_7

    const/4 v0, 0x1

    move v5, v0

    :goto_5
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->setSpinner(III[II)V

    goto :goto_0

    .line 1134
    :cond_4
    invoke-virtual {v9}, Lcom/motorola/blur/settings/EmailSettingsModel;->getRetentionPolicy()I

    move-result v0

    goto :goto_3

    .line 1135
    :cond_5
    const-string v0, "110"

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/motorola/blur/settings/EmailSettingsModel;->getPort(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1139
    :cond_7
    invoke-direct {p0}, Lcom/motorola/blur/settings/EditEmailAccountActivity;->getIncomingAuthPolicy()I

    move-result v0

    move v5, v0

    goto :goto_5

    .line 1124
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1153
    .local p1, adapterView:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 851
    invoke-super {p0}, Lcom/motorola/blur/setup/SetupActivity;->onPause()V

    .line 852
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 455
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onWindowFocusChanged(Z)V

    .line 456
    iget v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mErrorCode:I

    if-eqz v0, :cond_0

    .line 457
    iget v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mErrorCode:I

    invoke-static {p0, v0}, Lcom/motorola/blur/setup/SilentBlurUtility;->showErrorDialog(Landroid/content/Context;I)V

    .line 458
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/blur/settings/EditEmailAccountActivity;->mErrorCode:I

    .line 460
    :cond_0
    return-void
.end method
