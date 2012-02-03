.class public Lcom/android/phone/IccNetworkDepersonalizationPanel;
.super Lcom/android/phone/IccPanel;
.source "IccNetworkDepersonalizationPanel.java"


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
    .line 113
    invoke-direct {p0, p1}, Lcom/android/phone/IccPanel;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$1;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    .line 84
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$2;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    .line 169
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$3;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    .line 207
    new-instance v0, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;

    invoke-direct {v0, p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel$4;-><init>(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V

    iput-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateError()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->hideAlert()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateSuccess()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/IccNetworkDepersonalizationPanel;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/IccNetworkDepersonalizationPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->indicateBusy()V

    return-void
.end method

.method private hideAlert()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    return-void
.end method

.method private indicateBusy()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d0059

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 186
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 188
    return-void
.end method

.method private indicateError()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d005a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 194
    return-void
.end method

.method private indicateSuccess()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d005b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 198
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 118
    invoke-super {p0, p1}, Lcom/android/phone/IccPanel;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v3, 0x7f03003b

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->setContentView(I)V

    .line 122
    const v3, 0x7f080101

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    .line 123
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 124
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntry:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 128
    .local v2, text:Ljava/lang/CharSequence;
    move-object v0, v2

    check-cast v0, Landroid/text/Spannable;

    move-object v1, v0

    .line 129
    .local v1, span:Landroid/text/Spannable;
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPinEntryWatcher:Landroid/text/TextWatcher;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v5, 0x12

    invoke-interface {v1, v3, v6, v4, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 131
    const v3, 0x7f080100

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mEntryPanel:Landroid/widget/LinearLayout;

    .line 133
    const v3, 0x7f080102

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    .line 134
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mUnlockListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v3, 0x7f080103

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    .line 139
    invoke-virtual {p0}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 141
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    :goto_0
    const v3, 0x7f080104

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusPanel:Landroid/widget/LinearLayout;

    .line 150
    const v3, 0x7f080105

    invoke-virtual {p0, v3}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mStatusText:Landroid/widget/TextView;

    .line 152
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 153
    return-void

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/android/phone/IccNetworkDepersonalizationPanel;->mDismissButton:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 162
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 163
    const/4 v0, 0x1

    .line 166
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/IccPanel;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 157
    invoke-super {p0}, Lcom/android/phone/IccPanel;->onStart()V

    .line 158
    return-void
.end method
