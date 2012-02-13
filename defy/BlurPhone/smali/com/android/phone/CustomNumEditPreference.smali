.class public Lcom/android/phone/CustomNumEditPreference;
.super Landroid/preference/EditTextPreference;
.source "CustomNumEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CustomNumEditPreference$CustomNumberEditorTextWatcher;,
        Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CustomNumEditPreference"

.field private static final VDBG:Z


# instance fields
.field private customNumEdit:Landroid/widget/EditText;

.field private customNumberEditorTextWatcher:Landroid/text/TextWatcher;

.field private mDialogOnClosedListener:Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;

.field private mOKButtonState:Z

.field private mRestoreFlag:Z

.field private okButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/CustomNumEditPreference;->VDBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CustomNumEditPreference;->customNumberEditorTextWatcher:Landroid/text/TextWatcher;

    .line 55
    iput-boolean v1, p0, Lcom/android/phone/CustomNumEditPreference;->mRestoreFlag:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/phone/CustomNumEditPreference;->mOKButtonState:Z

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CustomNumEditPreference;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/phone/CustomNumEditPreference;->okButton:Landroid/widget/Button;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 168
    const-string v0, "CustomNumEditPreference"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 2
    .parameter "positiveResult"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/phone/CustomNumEditPreference;->customNumberEditorTextWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/phone/CustomNumEditPreference;->customNumEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/phone/CustomNumEditPreference;->customNumberEditorTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CustomNumEditPreference;->mDialogOnClosedListener:Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/phone/CustomNumEditPreference;->mDialogOnClosedListener:Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;->onDialogClosed(Lcom/android/phone/CustomNumEditPreference;Z)V

    .line 114
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->onDialogClosed(Z)V

    .line 115
    return-void
.end method

.method public setDialogOnClosedListener(Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/phone/CustomNumEditPreference;->mDialogOnClosedListener:Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;

    .line 132
    return-void
.end method

.method public setRestoreState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 139
    iput-boolean p1, p0, Lcom/android/phone/CustomNumEditPreference;->mOKButtonState:Z

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CustomNumEditPreference;->mRestoreFlag:Z

    .line 141
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/preference/EditTextPreference;->showDialog(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/phone/CustomNumEditPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CustomNumEditPreference;->customNumEdit:Landroid/widget/EditText;

    .line 75
    invoke-virtual {p0}, Lcom/android/phone/CustomNumEditPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CustomNumEditPreference;->okButton:Landroid/widget/Button;

    .line 77
    iget-boolean v1, p0, Lcom/android/phone/CustomNumEditPreference;->mRestoreFlag:Z

    if-nez v1, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/android/phone/CustomNumEditPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_diapad_custom_phone_number"

    invoke-static {v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, str:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/phone/CustomNumEditPreference;->customNumEdit:Landroid/widget/EditText;

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CustomNumEditPreference;->okButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/CustomNumEditPreference;->okButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    .end local v0           #str:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CustomNumEditPreference;->customNumberEditorTextWatcher:Landroid/text/TextWatcher;

    if-nez v1, :cond_2

    .line 90
    new-instance v1, Lcom/android/phone/CustomNumEditPreference$CustomNumberEditorTextWatcher;

    invoke-direct {v1, p0}, Lcom/android/phone/CustomNumEditPreference$CustomNumberEditorTextWatcher;-><init>(Lcom/android/phone/CustomNumEditPreference;)V

    iput-object v1, p0, Lcom/android/phone/CustomNumEditPreference;->customNumberEditorTextWatcher:Landroid/text/TextWatcher;

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CustomNumEditPreference;->customNumEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/phone/CustomNumEditPreference;->customNumberEditorTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 95
    return-void

    .line 85
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CustomNumEditPreference;->okButton:Landroid/widget/Button;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/CustomNumEditPreference;->okButton:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/android/phone/CustomNumEditPreference;->mOKButtonState:Z

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 86
    :cond_4
    iput-boolean v3, p0, Lcom/android/phone/CustomNumEditPreference;->mRestoreFlag:Z

    goto :goto_0
.end method
