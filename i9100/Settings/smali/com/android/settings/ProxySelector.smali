.class public Lcom/android/settings/ProxySelector;
.super Landroid/app/Activity;
.source "ProxySelector.java"


# static fields
.field private static final HOSTNAME_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field mClearHandler:Landroid/view/View$OnClickListener;

.field mDefaultHandler:Landroid/view/View$OnClickListener;

.field mHostnameField:Landroid/widget/EditText;

.field mOKButton:Landroid/widget/Button;

.field mOKHandler:Landroid/view/View$OnClickListener;

.field mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

.field mPortField:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const-string v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ProxySelector;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 74
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 231
    new-instance v0, Lcom/android/settings/ProxySelector$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$1;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    .line 239
    new-instance v0, Lcom/android/settings/ProxySelector$2;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$2;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mClearHandler:Landroid/view/View$OnClickListener;

    .line 246
    new-instance v0, Lcom/android/settings/ProxySelector$3;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$3;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mDefaultHandler:Landroid/view/View$OnClickListener;

    .line 252
    new-instance v0, Lcom/android/settings/ProxySelector$4;

    invoke-direct {v0, p0}, Lcom/android/settings/ProxySelector$4;-><init>(Lcom/android/settings/ProxySelector;)V

    iput-object v0, p0, Lcom/android/settings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method


# virtual methods
.method initView()V
    .locals 3

    .prologue
    .line 98
    const v1, 0x7f0b00f3

    invoke-virtual {p0, v1}, Lcom/android/settings/ProxySelector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    .line 99
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 101
    const v1, 0x7f0b00f4

    invoke-virtual {p0, v1}, Lcom/android/settings/ProxySelector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    .line 102
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mOnFocusChangeHandler:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 105
    const v1, 0x7f0b00f5

    invoke-virtual {p0, v1}, Lcom/android/settings/ProxySelector;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/ProxySelector;->mOKButton:Landroid/widget/Button;

    .line 106
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mOKButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/ProxySelector;->mOKHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v1, 0x7f0b00f6

    invoke-virtual {p0, v1}, Lcom/android/settings/ProxySelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 109
    .local v0, b:Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mClearHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v1, 0x7f0b00f7

    invoke-virtual {p0, v1}, Lcom/android/settings/ProxySelector;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #b:Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 112
    .restart local v0       #b:Landroid/widget/Button;
    iget-object v1, p0, Lcom/android/settings/ProxySelector;->mDefaultHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f030051

    invoke-virtual {p0, v0}, Lcom/android/settings/ProxySelector;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->initView()V

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/ProxySelector;->populateFields(Z)V

    .line 85
    return-void
.end method

.method populateFields(Z)V
    .locals 7
    .parameter "useDefault"

    .prologue
    .line 116
    const/4 v1, 0x0

    .line 117
    .local v1, hostname:Ljava/lang/String;
    const/4 v3, -0x1

    .line 118
    .local v3, port:I
    if-eqz p1, :cond_3

    .line 120
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    .line 128
    :goto_0
    if-nez v1, :cond_0

    .line 129
    const-string v1, ""

    .line 132
    :cond_0
    iget-object v6, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    const-string v6, ""

    move-object v4, v6

    .line 135
    .local v4, portStr:Ljava/lang/String;
    :goto_1
    iget-object v6, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 139
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "button-label"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, buttonLabel:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 141
    iget-object v6, p0, Lcom/android/settings/ProxySelector;->mOKButton:Landroid/widget/Button;

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_1
    const-string v6, "title"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, title:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 146
    invoke-virtual {p0, v5}, Lcom/android/settings/ProxySelector;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    :cond_2
    return-void

    .line 124
    .end local v0           #buttonLabel:Ljava/lang/String;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #title:Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {p0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v3

    goto :goto_0

    .line 134
    :cond_4
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    goto :goto_1
.end method

.method saveToDb()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 185
    iget-object v6, p0, Lcom/android/settings/ProxySelector;->mHostnameField:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, hostname:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/ProxySelector;->mPortField:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, portStr:Ljava/lang/String;
    const/4 v2, -0x1

    .line 189
    .local v2, port:I
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 190
    .local v5, result:I
    if-lez v5, :cond_0

    .line 191
    invoke-virtual {p0, v5}, Lcom/android/settings/ProxySelector;->showError(I)V

    move v6, v7

    .line 228
    :goto_0
    return v6

    .line 195
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 197
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/ProxySelector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 214
    .local v4, res:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v6

    if-ne v2, v6, :cond_2

    .line 219
    const/4 v1, 0x0

    .line 222
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 223
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    :cond_3
    const-string v6, "http_proxy"

    invoke-static {v4, v6, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 226
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/ProxySelector;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    const/4 v6, 0x1

    goto :goto_0

    .line 198
    .end local v4           #res:Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/NumberFormatException;
    move v6, v7

    .line 199
    goto :goto_0
.end method

.method protected showError(I)V
    .locals 3
    .parameter "error"

    .prologue
    .line 89
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080088

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080089

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 94
    return-void
.end method

.method validate(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "hostname"
    .parameter "port"

    .prologue
    const v4, 0x7f08008d

    .line 155
    sget-object v3, Lcom/android/settings/ProxySelector;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 157
    .local v1, match:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    const v3, 0x7f08008a

    .line 177
    :goto_0
    return v3

    .line 159
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 160
    const v3, 0x7f08008b

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 165
    const v3, 0x7f08008c

    goto :goto_0

    .line 167
    :cond_2
    const/4 v2, -0x1

    .line 169
    .local v2, portVal:I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 173
    if-lez v2, :cond_3

    const v3, 0xffff

    if-le v2, v3, :cond_4

    :cond_3
    move v3, v4

    .line 174
    goto :goto_0

    .line 170
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/NumberFormatException;
    move v3, v4

    .line 171
    goto :goto_0

    .line 177
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .end local v2           #portVal:I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method
