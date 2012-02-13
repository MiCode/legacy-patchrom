.class public Lcom/android/phone/DialPadSettingPrefScreen;
.super Landroid/preference/PreferenceActivity;
.source "DialPadSettingPrefScreen.java"

# interfaces
.implements Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;


# static fields
.field private static final BUTTON_AC_KEY:Ljava/lang/String; = "button_all_calls_cb"

.field private static final BUTTON_CN_KEY:Ljava/lang/String; = "button_custom_num_cb"

.field private static final BUTTON_VM_EDIT_KEY:Ljava/lang/String; = "button_custom_num_edit"

.field private static final BUTTON_VM_KEY:Ljava/lang/String; = "button_voicemail_cb"

.field private static final DIALOG_INCORRECT_FORMAT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "DialPadSettingPrefScreen"

.field private static final VDBG:Z


# instance fields
.field private customNumEdit:Landroid/widget/EditText;

.field private mButtonAllCallsCb:Landroid/preference/CheckBoxPreference;

.field private mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

.field private mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

.field private mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/DialPadSettingPrefScreen;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 213
    const-string v0, "DialPadSettingPrefScreen"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method private stripDashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "text"

    .prologue
    .line 223
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 239
    :goto_0
    return-object v2

    .line 226
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 228
    .local v1, str:Ljava/lang/StringBuffer;
    sget-boolean v2, Lcom/android/phone/DialPadSettingPrefScreen;->VDBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beforestripDashes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/DialPadSettingPrefScreen;->log(Ljava/lang/String;)V

    .line 230
    :cond_1
    const/4 v0, 0x0

    .line 231
    .local v0, p:I
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 232
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2

    .line 233
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 235
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    :cond_3
    sget-boolean v2, Lcom/android/phone/DialPadSettingPrefScreen;->VDBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterstripDashes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/DialPadSettingPrefScreen;->log(Ljava/lang/String;)V

    .line 239
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "icicle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 128
    sget-boolean v2, Lcom/android/phone/DialPadSettingPrefScreen;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onCreate."

    invoke-static {v2}, Lcom/android/phone/DialPadSettingPrefScreen;->log(Ljava/lang/String;)V

    .line 129
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 131
    const v2, 0x7f050008

    invoke-virtual {p0, v2}, Lcom/android/phone/DialPadSettingPrefScreen;->addPreferencesFromResource(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/phone/DialPadSettingPrefScreen;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 134
    .local v1, prefSet:Landroid/preference/PreferenceScreen;
    const-string v2, "button_voicemail_cb"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    .line 135
    const-string v2, "button_custom_num_cb"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    .line 136
    const-string v2, "button_all_calls_cb"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonAllCallsCb:Landroid/preference/CheckBoxPreference;

    .line 137
    const-string v2, "button_custom_num_edit"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/phone/CustomNumEditPreference;

    iput-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    .line 140
    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonAllCallsCb:Landroid/preference/CheckBoxPreference;

    if-nez v2, :cond_3

    .line 142
    :cond_1
    sget-boolean v2, Lcom/android/phone/DialPadSettingPrefScreen;->VDBG:Z

    if-eqz v2, :cond_2

    const-string v2, "onCreate: findPreference return null."

    invoke-static {v2}, Lcom/android/phone/DialPadSettingPrefScreen;->log(Ljava/lang/String;)V

    .line 172
    :cond_2
    :goto_0
    return-void

    .line 147
    :cond_3
    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    invoke-virtual {v2}, Lcom/android/phone/CustomNumEditPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->customNumEdit:Landroid/widget/EditText;

    .line 149
    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/DialPadSettingPrefScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "vm_tf_auto_dialpad_enabled"

    invoke-static {v3, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-gtz v3, :cond_5

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 150
    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/DialPadSettingPrefScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "custom_auto_diapad_enabled"

    invoke-static {v3, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-gtz v3, :cond_6

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 151
    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonAllCallsCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/phone/DialPadSettingPrefScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "all_auto_diapad_enabled"

    invoke-static {v3, v4, v5}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-gtz v3, :cond_7

    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/android/phone/DialPadSettingPrefScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_diapad_custom_phone_number"

    invoke-static {v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, customNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 155
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 156
    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    invoke-virtual {v2, v0}, Lcom/android/phone/CustomNumEditPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    :cond_4
    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    invoke-virtual {v2, p0}, Lcom/android/phone/CustomNumEditPreference;->setDialogOnClosedListener(Lcom/android/phone/CustomNumEditPreference$OnDialogClosedListener;)V

    .line 160
    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonAllCallsCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 162
    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 163
    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 164
    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    invoke-virtual {v2, v5}, Lcom/android/phone/CustomNumEditPreference;->setEnabled(Z)V

    goto :goto_0

    .end local v0           #customNumber:Ljava/lang/String;
    :cond_5
    move v3, v6

    .line 149
    goto :goto_1

    :cond_6
    move v3, v6

    .line 150
    goto :goto_2

    :cond_7
    move v3, v6

    .line 151
    goto :goto_3

    .line 168
    .restart local v0       #customNumber:Ljava/lang/String;
    :cond_8
    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 169
    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 170
    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    iget-object v3, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_9

    move v3, v6

    :goto_4
    invoke-virtual {v2, v3}, Lcom/android/phone/CustomNumEditPreference;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    move v3, v5

    goto :goto_4
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter "id"
    .parameter "args"

    .prologue
    const/4 v2, 0x0

    .line 176
    packed-switch p1, :pswitch_data_0

    move-object v0, v2

    .line 184
    :goto_0
    return-object v0

    .line 178
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b03a6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b03a7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b03a5

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDialogClosed(Lcom/android/phone/CustomNumEditPreference;Z)V
    .locals 3
    .parameter "preference"
    .parameter "positiveResult"

    .prologue
    .line 104
    if-eqz p2, :cond_0

    .line 107
    iget-object v1, p0, Lcom/android/phone/DialPadSettingPrefScreen;->customNumEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, nanpNum:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/phone/DialPadSettingPrefScreen;->stripDashes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNanp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/DialPadSettingPrefScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_diapad_custom_phone_number"

    invoke-static {v1, v2, v0}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    iget-object v1, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->customNumEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/CustomNumEditPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 124
    .end local v0           #nanpNum:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 121
    .restart local v0       #nanpNum:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/DialPadSettingPrefScreen;->showDialog(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 64
    iget-object v0, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/android/phone/DialPadSettingPrefScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vm_tf_auto_dialpad_enabled"

    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v0, v3

    .line 100
    :goto_1
    return v0

    :cond_0
    move v2, v4

    .line 65
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 70
    invoke-virtual {p0}, Lcom/android/phone/DialPadSettingPrefScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "custom_auto_diapad_enabled"

    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_2
    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 74
    iget-object v0, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    iget-object v1, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/phone/CustomNumEditPreference;->setEnabled(Z)V

    move v0, v3

    .line 75
    goto :goto_1

    :cond_2
    move v2, v4

    .line 70
    goto :goto_2

    :cond_3
    move v1, v4

    .line 74
    goto :goto_3

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonAllCallsCb:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_8

    .line 77
    invoke-virtual {p0}, Lcom/android/phone/DialPadSettingPrefScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "all_auto_diapad_enabled"

    iget-object v2, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonAllCallsCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-ne v2, v3, :cond_5

    move v2, v3

    :goto_4
    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 81
    iget-object v0, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonAllCallsCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-ne v0, v3, :cond_6

    .line 83
    iget-object v0, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 84
    iget-object v0, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    invoke-virtual {v0, v4}, Lcom/android/phone/CustomNumEditPreference;->setEnabled(Z)V

    :goto_5
    move v0, v3

    .line 94
    goto :goto_1

    :cond_5
    move v2, v4

    .line 77
    goto :goto_4

    .line 89
    :cond_6
    iget-object v0, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonVoiceMailCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 90
    iget-object v0, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 92
    iget-object v0, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    iget-object v1, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumCb:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Lcom/android/phone/CustomNumEditPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_7
    move v1, v4

    goto :goto_6

    .line 95
    :cond_8
    iget-object v0, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    if-ne p2, v0, :cond_9

    move v0, v3

    .line 98
    goto :goto_1

    :cond_9
    move v0, v4

    .line 100
    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 202
    const-string v1, "mInEditCustomNumberscreen"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string v1, "mOKButtonState"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 206
    .local v0, okButtonState:Z
    iget-object v1, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/CustomNumEditPreference;->setRestoreState(Z)V

    .line 208
    .end local v0           #okButtonState:Z
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 209
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    const-string v3, "mInEditCustomNumberscreen"

    .line 189
    iget-object v1, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    invoke-virtual {v1}, Lcom/android/phone/CustomNumEditPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/phone/DialPadSettingPrefScreen;->mButtonCustomNumEdit:Lcom/android/phone/CustomNumEditPreference;

    invoke-virtual {v1}, Lcom/android/phone/CustomNumEditPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 192
    .local v0, button:Landroid/widget/Button;
    if-eqz v0, :cond_0

    const-string v1, "mOKButtonState"

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    :cond_0
    const-string v1, "mInEditCustomNumberscreen"

    const/4 v1, 0x1

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 198
    .end local v0           #button:Landroid/widget/Button;
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 199
    return-void

    .line 196
    :cond_1
    const-string v1, "mInEditCustomNumberscreen"

    const/4 v1, 0x0

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method
