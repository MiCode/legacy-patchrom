.class public Lcom/android/settings/LanguageSettings;
.super Landroid/preference/PreferenceActivity;
.source "LanguageSettings.java"


# instance fields
.field private mCheckboxes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/CheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mHaveHardKeyboard:Z

.field private mInputMethodProperties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLanguagePref:Landroid/preference/Preference;

.field private mLastInputMethodId:Ljava/lang/String;

.field private mLastTickedInputMethodId:Ljava/lang/String;

.field final mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

.field private selectDefaultIMEListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 58
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    iput-object v0, p0, Lcom/android/settings/LanguageSettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 70
    new-instance v0, Lcom/android/settings/LanguageSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LanguageSettings$1;-><init>(Lcom/android/settings/LanguageSettings;)V

    iput-object v0, p0, Lcom/android/settings/LanguageSettings;->selectDefaultIMEListener:Landroid/preference/Preference$OnPreferenceClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/LanguageSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    return-object p1
.end method

.method public static getInputMethodIdFromKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "key"

    .prologue
    .line 65
    return-object p0
.end method

.method private isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z
    .locals 1
    .parameter "property"

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCreateIMM()V
    .locals 20

    .prologue
    .line 110
    const-string v16, "input_method"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    .line 114
    .local v6, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string v16, "select_default_input_method"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 115
    .local v12, selImePreference:Landroid/preference/Preference;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->selectDefaultIMEListener:Landroid/preference/Preference$OnPreferenceClickListener;

    move-object/from16 v16, v0

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 119
    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "default_input_method"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    .line 124
    const-string v16, "keyboard_settings_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceGroup;

    .line 127
    .local v7, keyboardSettingsCategory:Landroid/preference/PreferenceGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v16, v0

    if-nez v16, :cond_4

    const/16 v16, 0x0

    move/from16 v3, v16

    .line 129
    .local v3, N:I
    :goto_0
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v3, :cond_6

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 131
    .local v11, property:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 133
    .local v9, prefKey:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 134
    .local v8, label:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v15

    .line 137
    .local v15, systemIME:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    const/16 v16, 0x1

    move v0, v3

    move/from16 v1, v16

    if-le v0, v1, :cond_1

    if-nez v15, :cond_1

    .line 138
    :cond_0
    new-instance v4, Landroid/preference/CheckBoxPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 139
    .local v4, chkbxPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v4, v9}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v4, v8}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v7, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mCheckboxes:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v4           #chkbxPref:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 147
    new-instance v10, Landroid/preference/PreferenceScreen;

    const/16 v16, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 148
    .local v10, prefScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v13

    .line 150
    .local v13, settingsActivity:Ljava/lang/String;
    const/16 v16, 0x2f

    move-object v0, v13

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    if-gez v16, :cond_2

    .line 151
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 153
    :cond_2
    invoke-virtual {v10, v13}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v10, v8}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 155
    const/16 v16, 0x1

    move v0, v3

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 156
    const v16, 0x7f0803f5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v16

    move-object v0, v10

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 162
    :goto_2
    invoke-virtual {v7, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 129
    .end local v10           #prefScreen:Landroid/preference/PreferenceScreen;
    .end local v13           #settingsActivity:Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 127
    .end local v3           #N:I
    .end local v5           #i:I
    .end local v8           #label:Ljava/lang/CharSequence;
    .end local v9           #prefKey:Ljava/lang/String;
    .end local v11           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v15           #systemIME:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v3, v16

    goto/16 :goto_0

    .line 158
    .restart local v3       #N:I
    .restart local v5       #i:I
    .restart local v8       #label:Ljava/lang/CharSequence;
    .restart local v9       #prefKey:Ljava/lang/String;
    .restart local v10       #prefScreen:Landroid/preference/PreferenceScreen;
    .restart local v11       #property:Landroid/view/inputmethod/InputMethodInfo;
    .restart local v13       #settingsActivity:Ljava/lang/String;
    .restart local v15       #systemIME:Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0803f4

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 160
    .local v14, settingsLabel:Ljava/lang/CharSequence;
    invoke-virtual {v10, v14}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 165
    .end local v8           #label:Ljava/lang/CharSequence;
    .end local v9           #prefKey:Ljava/lang/String;
    .end local v10           #prefScreen:Landroid/preference/PreferenceScreen;
    .end local v11           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v13           #settingsActivity:Ljava/lang/String;
    .end local v14           #settingsLabel:Ljava/lang/CharSequence;
    .end local v15           #systemIME:Z
    :cond_6
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    const-string v4, "phone_language"

    .line 82
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v1, 0x7f040018

    invoke-virtual {p0, v1}, Lcom/android/settings/LanguageSettings;->addPreferencesFromResource(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v3, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "phone_language"

    invoke-virtual {p0, v4}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 94
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "hardkeyboard_category"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 100
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/LanguageSettings;->mCheckboxes:Ljava/util/List;

    .line 101
    invoke-direct {p0}, Lcom/android/settings/LanguageSettings;->onCreateIMM()V

    .line 102
    return-void

    .line 90
    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_0
    const-string v1, "phone_language"

    invoke-virtual {p0, v4}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto :goto_0

    .line 98
    .restart local v0       #config:Landroid/content/res/Configuration;
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    goto :goto_1
.end method

.method protected onPause()V
    .locals 15

    .prologue
    .line 206
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v12, 0x100

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 209
    .local v1, builder:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v12, 0x100

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 211
    .local v2, disabledSysImes:Ljava/lang/StringBuilder;
    const/4 v3, -0x1

    .line 212
    .local v3, firstEnabled:I
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    .line 213
    .local v0, N:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v0, :cond_8

    .line 214
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 215
    .local v8, property:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, id:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 217
    .local v7, pref:Landroid/preference/CheckBoxPreference;
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 218
    .local v4, hasIt:Z
    invoke-direct {p0, v8}, Lcom/android/settings/LanguageSettings;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v9

    .line 219
    .local v9, systemIme:Z
    const/4 v12, 0x1

    if-eq v0, v12, :cond_0

    if-eqz v9, :cond_1

    :cond_0
    iget-boolean v12, p0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v12, :cond_2

    :cond_1
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 221
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_3

    const/16 v12, 0x3a

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    :cond_3
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    if-gez v3, :cond_4

    .line 224
    move v3, v5

    .line 231
    :cond_4
    :goto_1
    if-eqz v7, :cond_6

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v12

    if-nez v12, :cond_6

    if-eqz v9, :cond_6

    iget-boolean v12, p0, Lcom/android/settings/LanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v12, :cond_6

    .line 232
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_5

    const-string v12, ":"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 226
    :cond_7
    if-eqz v4, :cond_4

    .line 227
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    iput-object v12, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    goto :goto_1

    .line 238
    .end local v4           #hasIt:Z
    .end local v6           #id:Ljava/lang/String;
    .end local v7           #pref:Landroid/preference/CheckBoxPreference;
    .end local v8           #property:Landroid/view/inputmethod/InputMethodInfo;
    .end local v9           #systemIme:Z
    :cond_8
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    if-eqz v12, :cond_9

    const-string v12, ""

    iget-object v13, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 239
    :cond_9
    if-ltz v3, :cond_c

    .line 240
    iget-object v12, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #N:I
    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    .line 246
    :cond_a
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "enabled_input_methods"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "disabled_system_input_methods"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "default_input_method"

    invoke-static {v12, v13}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 255
    .local v10, tmpDefaultIME:Ljava/lang/String;
    if-eqz v10, :cond_b

    .line 256
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 257
    .local v11, tmpEnabledIMEs:Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "default_input_method"

    iget-object v14, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    if-eqz v14, :cond_d

    iget-object v14, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    :goto_3
    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 271
    .end local v11           #tmpEnabledIMEs:Ljava/lang/String;
    :cond_b
    return-void

    .line 242
    .end local v10           #tmpDefaultIME:Ljava/lang/String;
    .restart local v0       #N:I
    :cond_c
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/settings/LanguageSettings;->mLastInputMethodId:Ljava/lang/String;

    goto :goto_2

    .line 258
    .end local v0           #N:I
    .restart local v10       #tmpDefaultIME:Ljava/lang/String;
    .restart local v11       #tmpEnabledIMEs:Ljava/lang/String;
    :cond_d
    const-string v14, ""

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 21
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 277
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 278
    const/4 v15, 0x0

    .line 360
    :goto_0
    return v15

    .line 281
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/preference/CheckBoxPreference;

    move v15, v0

    if-eqz v15, :cond_6

    .line 282
    move-object/from16 v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v6, v0

    .line 283
    .local v6, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->getKey()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/LanguageSettings;->getInputMethodIdFromKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 284
    .local v9, id:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 285
    const/4 v13, 0x0

    .line 286
    .local v13, selImi:Landroid/view/inputmethod/InputMethodInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    .line 287
    .local v4, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v4, :cond_2

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    move-object v15, v0

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodInfo;

    .line 289
    .local v10, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v10}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 290
    move-object v13, v10

    .line 291
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings;->isSystemIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 293
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    .line 294
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v15

    goto :goto_0

    .line 287
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 298
    .end local v10           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_2
    const/4 v15, 0x0

    invoke-virtual {v6, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 299
    if-nez v13, :cond_3

    .line 300
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v15

    goto :goto_0

    .line 302
    :cond_3
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v16, 0x1040014

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x1080027

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x7f0803d8

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/LanguageSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const v16, 0x104000a

    new-instance v17, Lcom/android/settings/LanguageSettings$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v3, v9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/LanguageSettings$3;-><init>(Lcom/android/settings/LanguageSettings;Landroid/preference/CheckBoxPreference;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    const/high16 v16, 0x104

    new-instance v17, Lcom/android/settings/LanguageSettings$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/LanguageSettings$2;-><init>(Lcom/android/settings/LanguageSettings;)V

    invoke-virtual/range {v15 .. v17}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 330
    .local v7, d:Landroid/app/AlertDialog;
    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 356
    .end local v4           #N:I
    .end local v6           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v7           #d:Landroid/app/AlertDialog;
    .end local v8           #i:I
    .end local v9           #id:Ljava/lang/String;
    .end local v13           #selImi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_4
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/LanguageSettings;->onPause()V

    .line 360
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v15

    goto/16 :goto_0

    .line 331
    .restart local v6       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v9       #id:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 332
    const/4 v15, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    goto :goto_2

    .line 334
    .end local v6           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v9           #id:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/preference/PreferenceScreen;

    move v15, v0

    if-eqz v15, :cond_4

    .line 335
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v15

    if-nez v15, :cond_4

    .line 336
    move-object/from16 v0, p2

    check-cast v0, Landroid/preference/PreferenceScreen;

    move-object v12, v0

    .line 337
    .local v12, pref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v12}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, activityName:Ljava/lang/String;
    const/4 v15, 0x0

    const/16 v16, 0x2e

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v16

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 341
    .local v11, packageName:Ljava/lang/String;
    const/16 v15, 0x2f

    invoke-virtual {v5, v15}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 342
    .local v14, slash:I
    if-lez v14, :cond_7

    .line 343
    const/4 v15, 0x0

    invoke-virtual {v5, v15, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 344
    add-int/lit8 v15, v14, 0x1

    invoke-virtual {v5, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 346
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_4

    .line 347
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.intent.action.MAIN"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v8, i:Landroid/content/Intent;
    invoke-virtual {v8, v11, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/android/settings/LanguageSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method protected onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 169
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 171
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 172
    .local v2, enabled:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_input_methods"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, enabledStr:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 175
    iget-object v8, p0, Lcom/android/settings/LanguageSettings;->mStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 176
    .local v8, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v8, v3}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 177
    :goto_0
    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 178
    invoke-virtual {v8}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v8           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    :cond_0
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 184
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_2

    .line 185
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    .line 186
    .local v5, id:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mInputMethodProperties:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/LanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 188
    .local v7, pref:Landroid/preference/CheckBoxPreference;
    if-eqz v7, :cond_1

    .line 189
    invoke-virtual {v2, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 184
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 192
    .end local v5           #id:Ljava/lang/String;
    .end local v7           #pref:Landroid/preference/CheckBoxPreference;
    :cond_2
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/LanguageSettings;->mLastTickedInputMethodId:Ljava/lang/String;

    .line 194
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v9, :cond_3

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/LanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 196
    .local v1, conf:Landroid/content/res/Configuration;
    iget-object v9, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v10, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 197
    .local v6, locale:Ljava/lang/String;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-le v9, v11, :cond_3

    .line 198
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 199
    iget-object v9, p0, Lcom/android/settings/LanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 202
    .end local v1           #conf:Landroid/content/res/Configuration;
    .end local v6           #locale:Ljava/lang/String;
    :cond_3
    return-void
.end method
