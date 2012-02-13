.class public Lcom/android/phone/SimNetworkDepersonalizationPanel;
.super Lcom/android/phone/SimPanel;
.source "SimNetworkDepersonalizationPanel.java"


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_SIM_NTWRK_DEPERSONALIZATION_RESULT:I = 0x64


# instance fields
.field private mDismissButton:Landroid/widget/Button;

.field mDismissListener:Landroid/view/View$OnClickListener;

.field private mEntryPanel:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPinEntry:Landroid/widget/EditText;

.field private mPinEntryWatcher:Landroid/text/TextWatcher;

.field private mStatusPanel:Landroid/widget/LinearLayout;

.field private mStatusText:Landroid/widget/TextView;

.field private mUnlockButton:Landroid/widget/Button;

.field mUnlockListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/phone/SimPanel;-><init>(Landroid/content/Context;)V

    .line 67
    new-instance v0, Lcom/android/phone/SimNetworkDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SimNetworkDepersonalizationPanel$1;-><init>(Lcom/android/phone/SimNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 83
    new-instance v0, Lcom/android/phone/SimNetworkDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/SimNetworkDepersonalizationPanel$2;-><init>(Lcom/android/phone/SimNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 161
    new-instance v0, Lcom/android/phone/SimNetworkDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/SimNetworkDepersonalizationPanel$3;-><init>(Lcom/android/phone/SimNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 204
    new-instance v0, Lcom/android/phone/SimNetworkDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/SimNetworkDepersonalizationPanel$4;-><init>(Lcom/android/phone/SimNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SimNetworkDepersonalizationPanel;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/SimNetworkDepersonalizationPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->indicateError()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/SimNetworkDepersonalizationPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->hideAlert()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/SimNetworkDepersonalizationPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->indicateSuccess()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/SimNetworkDepersonalizationPanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/SimNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/SimNetworkDepersonalizationPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->indicateBusy()V

    return-void
.end method

.method private hideAlert()V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 197
    return-void
.end method

.method private indicateBusy()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0b01c1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    return-void
.end method

.method private indicateError()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0b01c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    return-void
.end method

.method private indicateSuccess()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0b01c3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 190
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 192
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 200
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SimNetworkDepersonalizationPanel] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/phone/SimPanel;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v3, 0x7f03004f

    invoke-virtual {p0, v3}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->setContentView(I)V

    .line 121
    const v3, 0x7f07015f

    invoke-virtual {p0, v3}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    .line 122
    iget-object v3, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 123
    iget-object v3, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v3, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 127
    .local v2, text:Ljava/lang/CharSequence;
    move-object v0, v2

    check-cast v0, Landroid/text/Spannable;

    move-object v1, v0

    .line 128
    .local v1, span:Landroid/text/Spannable;
    iget-object v3, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    const/4 v4, 0x0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/16 v6, 0x12

    invoke-interface {v1, v3, v4, v5, v6}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 130
    const v3, 0x7f07015e

    invoke-virtual {p0, v3}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    .line 132
    const v3, 0x7f070160

    invoke-virtual {p0, v3}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    .line 133
    iget-object v3, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v3, 0x7f070162

    invoke-virtual {p0, v3}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    .line 137
    const v3, 0x7f070163

    invoke-virtual {p0, v3}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    .line 139
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 142
    const v3, 0x7f070161

    invoke-virtual {p0, v3}, Lcom/android/phone/SimNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    .line 143
    iget-object v3, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/SimNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 154
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 155
    const/4 v0, 0x1

    .line 158
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/SimPanel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/phone/SimPanel;->onStart()V

    .line 150
    return-void
.end method
