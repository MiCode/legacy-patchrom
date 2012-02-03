.class public Lcom/android/settings/DeviceInfoSettings;
.super Landroid/preference/PreferenceActivity;
.source "DeviceInfoSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field mHits:[J

.field private mUnAvailable:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 61
    const-string v0, "Unavailable"

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mUnAvailable:Ljava/lang/String;

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    return-void
.end method

.method private getFormattedKernelVersion()Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v9, 0x4

    const-string v7, "\n"

    const-string v7, "getFormattedKernelVersion : reader.close() error"

    const-string v10, "DeviceInfoSettings"

    .line 233
    const/4 v5, 0x0

    .line 236
    .local v5, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/proc/version"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x100

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 238
    .end local v5           #reader:Ljava/io/BufferedReader;
    .local v6, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 239
    .local v4, procVersionStr:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 245
    if-eqz v6, :cond_0

    .line 246
    :try_start_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 253
    :cond_0
    :goto_0
    :try_start_3
    const-string v0, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\(.*?(?:\\(.*?\\)).*?\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 263
    .local v0, PROC_VERSION_REGEX:Ljava/lang/String;
    const-string v7, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\(.*?(?:\\(.*?\\)).*?\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 264
    .local v3, p:Ljava/util/regex/Pattern;
    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 266
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_3

    .line 267
    const-string v7, "DeviceInfoSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Regex did not match on /proc/version: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mUnAvailable:Ljava/lang/String;

    move-object v5, v6

    .line 283
    .end local v0           #PROC_VERSION_REGEX:Ljava/lang/String;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v4           #procVersionStr:Ljava/lang/String;
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :goto_1
    return-object v7

    .line 248
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v4       #procVersionStr:Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 249
    .local v1, e:Ljava/io/IOException;
    const-string v7, "DeviceInfoSettings"

    const-string v8, "getFormattedKernelVersion : reader.close() error"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 278
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #procVersionStr:Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v1, v7

    move-object v5, v6

    .line 279
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    :goto_2
    const-string v7, "DeviceInfoSettings"

    const-string v7, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v10, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 283
    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mUnAvailable:Ljava/lang/String;

    goto :goto_1

    .line 240
    .end local v1           #e:Ljava/io/IOException;
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 241
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    const-string v7, "DeviceInfoSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getFormattedKernelVersion : Exception :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mUnAvailable:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 245
    if-eqz v6, :cond_1

    .line 246
    :try_start_5
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    :goto_3
    move-object v5, v6

    .line 250
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_1

    .line 248
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v1       #e:Ljava/lang/Exception;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_3
    move-exception v1

    .line 249
    .local v1, e:Ljava/io/IOException;
    :try_start_6
    const-string v8, "DeviceInfoSettings"

    const-string v9, "getFormattedKernelVersion : reader.close() error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    .line 244
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 245
    if-eqz v6, :cond_2

    .line 246
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 250
    :cond_2
    :goto_4
    :try_start_8
    throw v7

    .line 248
    :catch_4
    move-exception v1

    .line 249
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "DeviceInfoSettings"

    const-string v9, "getFormattedKernelVersion : reader.close() error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 269
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #PROC_VERSION_REGEX:Ljava/lang/String;
    .restart local v2       #m:Ljava/util/regex/Matcher;
    .restart local v3       #p:Ljava/util/regex/Pattern;
    .restart local v4       #procVersionStr:Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v7

    if-ge v7, v9, :cond_4

    .line 270
    const-string v7, "DeviceInfoSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Regex match on /proc/version only returned "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " groups"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v7, p0, Lcom/android/settings/DeviceInfoSettings;->mUnAvailable:Ljava/lang/String;

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto :goto_1

    .line 274
    .end local v5           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    move-result-object v7

    move-object v5, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #reader:Ljava/io/BufferedReader;
    goto/16 :goto_1

    .line 278
    .end local v0           #PROC_VERSION_REGEX:Ljava/lang/String;
    .end local v2           #m:Ljava/util/regex/Matcher;
    .end local v3           #p:Ljava/util/regex/Pattern;
    .end local v4           #procVersionStr:Ljava/lang/String;
    :catch_5
    move-exception v7

    move-object v1, v7

    goto/16 :goto_2
.end method

.method private removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preferenceGroup"
    .parameter "preference"
    .parameter "property"

    .prologue
    .line 199
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 205
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Property \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' missing and no \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' preference"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setStringSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    .line 213
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :goto_0
    return-void

    .line 214
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 215
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setValueSummary(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "preference"
    .parameter "property"

    .prologue
    const v4, 0x7f080004

    .line 222
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 226
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {p0, p1}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 289
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 292
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.UsbSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v0}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 297
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v11, 0x1

    const-string v10, "firmware_version"

    const-string v12, "system_tutorial"

    .line 67
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    const v8, 0x7f04000f

    invoke-virtual {p0, v8}, Lcom/android/settings/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "default_input_method"

    invoke-static {v8, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    .local v1, currentIme:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 75
    .local v0, component:Landroid/content/ComponentName;
    new-instance v2, Landroid/content/Intent;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".tutorial"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v2, imeIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 77
    .local v5, pm:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    invoke-virtual {v5, v2, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 78
    .local v7, tutorials:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "system_tutorial"

    invoke-virtual {p0, v12}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 82
    :cond_1
    const-string v8, "firmware_version"

    sget-object v8, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v10, v8}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v8, "firmware_version"

    invoke-virtual {p0, v10}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 84
    const-string v8, "baseband_version"

    const-string v9, "gsm.version.baseband"

    invoke-direct {p0, v8, v9}, Lcom/android/settings/DeviceInfoSettings;->setValueSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v8, "device_model"

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v8, "build_number"

    sget-object v9, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/settings/DeviceInfoSettings;->setStringSummary(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v8, "kernel_version"

    invoke-virtual {p0, v8}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-direct {p0}, Lcom/android/settings/DeviceInfoSettings;->getFormattedKernelVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "safetylegal"

    const-string v10, "ro.url.safetylegal"

    invoke-direct {p0, v8, v9, v10}, Lcom/android/settings/DeviceInfoSettings;->removePreferenceIfPropertyMissing(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v8, "com.sec.android.inputmethod.iwnnime.japan/.iWnnIME"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v11, :cond_2

    .line 97
    const-string v8, "system_tutorial"

    invoke-virtual {p0, v12}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 98
    .local v6, removablePreference:Landroid/preference/Preference;
    if-eqz v6, :cond_2

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    .end local v6           #removablePreference:Landroid/preference/Preference;
    :cond_2
    const-string v8, "system_tutorial"

    invoke-virtual {p0, v12}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 106
    .restart local v6       #removablePreference:Landroid/preference/Preference;
    if-eqz v6, :cond_3

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 117
    :cond_3
    const-string v8, "container"

    invoke-virtual {p0, v8}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    .line 118
    .local v4, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v8, "terms"

    invoke-static {p0, v4, v8, v11}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 120
    const-string v8, "license"

    invoke-static {p0, v4, v8, v11}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 122
    const-string v8, "copyright"

    invoke-static {p0, v4, v8, v11}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 124
    const-string v8, "team"

    invoke-static {p0, v4, v8, v11}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 134
    const-string v8, "contributors"

    invoke-static {p0, v4, v8, v11}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 162
    .local v3, mUpdateSettingAvailable:Z
    if-nez v3, :cond_4

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    const-string v9, "additional_system_update_settings"

    invoke-virtual {p0, v9}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 165
    :cond_4
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 306
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 307
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 301
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 169
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    const-string v3, "firmware_version"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v4, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v4, v4

    sub-int/2addr v4, v5

    invoke-static {v2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    iget-object v3, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    array-length v3, v3

    sub-int/2addr v3, v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    aput-wide v4, v2, v3

    .line 172
    iget-object v2, p0, Lcom/android/settings/DeviceInfoSettings;->mHits:[J

    aget-wide v2, v2, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1f4

    sub-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 173
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android"

    const-class v3, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const-string v2, "system_update_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    if-ne v2, p2, :cond_1

    .line 188
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 189
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.SOFTWARE_UPDATE_SETTING"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0, v1}, Lcom/android/settings/DeviceInfoSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 194
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    .line 178
    .restart local v1       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DeviceInfoSettings"

    const-string v3, "StartActivity failed.. Please try again"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
