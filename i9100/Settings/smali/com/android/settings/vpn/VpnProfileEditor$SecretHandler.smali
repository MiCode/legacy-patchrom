.class public abstract Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;
.super Ljava/lang/Object;
.source "VpnProfileEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn/VpnProfileEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "SecretHandler"
.end annotation


# instance fields
.field private mFieldNameId:I

.field private mHadSecret:Z

.field private mPref:Landroid/preference/EditTextPreference;


# direct methods
.method protected constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .parameter "c"
    .parameter "titleId"
    .parameter "fieldNameId"

    .prologue
    const/4 v4, 0x1

    const-string v5, ""

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->getSecretFromProfile()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->mHadSecret:Z

    .line 203
    iput p3, p0, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->mFieldNameId:I

    .line 205
    new-instance v0, Landroid/preference/EditTextPreference;

    invoke-direct {v0, p1}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->mPref:Landroid/preference/EditTextPreference;

    .line 206
    .local v0, pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setTitle(I)V

    .line 207
    invoke-virtual {v0, p2}, Landroid/preference/EditTextPreference;->setDialogTitle(I)V

    .line 208
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setInputType(I)V

    .line 210
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    new-instance v3, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v3}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 212
    const-string v2, ""

    invoke-virtual {v0, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->mHadSecret:Z

    if-eqz v3, :cond_1

    const v3, 0x7f0804da

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(I)V

    .line 216
    invoke-direct {p0, v1}, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->setSecretSummary(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, v4}, Landroid/preference/EditTextPreference;->setPersistent(Z)V

    .line 218
    const-string v2, ""

    invoke-virtual {p0, v5}, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->saveSecretToProfile(Ljava/lang/String;)V

    .line 219
    new-instance v2, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler$1;

    invoke-direct {v2, p0}, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler$1;-><init>(Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;)V

    invoke-virtual {v0, v2}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 228
    return-void

    .line 202
    .end local v0           #pref:Landroid/preference/EditTextPreference;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 213
    .restart local v0       #pref:Landroid/preference/EditTextPreference;
    :cond_1
    const v3, 0x7f0804db

    goto :goto_1
.end method

.method static synthetic access$200(Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->setSecretSummary(Ljava/lang/String;)V

    return-void
.end method

.method private setSecretSummary(Ljava/lang/String;)V
    .locals 6
    .parameter "value"

    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->mPref:Landroid/preference/EditTextPreference;

    .line 246
    .local v2, pref:Landroid/preference/EditTextPreference;
    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 247
    .local v0, c:Landroid/content/Context;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->mHadSecret:Z

    if-nez v3, :cond_0

    const v3, 0x7f0804d2

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 250
    .local v1, formatString:Ljava/lang/String;
    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->mFieldNameId:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 252
    return-void

    .line 247
    .end local v1           #formatString:Ljava/lang/String;
    :cond_0
    const v3, 0x7f0804d1

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method


# virtual methods
.method protected getPreference()Landroid/preference/EditTextPreference;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->mPref:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method protected abstract getSecretFromProfile()Ljava/lang/String;
.end method

.method protected abstract saveSecretToProfile(Ljava/lang/String;)V
.end method

.method protected validate()Ljava/lang/String;
    .locals 6

    .prologue
    .line 235
    iget-object v2, p0, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->mPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 236
    .local v0, c:Landroid/content/Context;
    iget-object v2, p0, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->mPref:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, value:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->mHadSecret:Z

    if-nez v2, :cond_0

    const v2, 0x7f0804a1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/settings/vpn/VpnProfileEditor$SecretHandler;->mFieldNameId:I

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
