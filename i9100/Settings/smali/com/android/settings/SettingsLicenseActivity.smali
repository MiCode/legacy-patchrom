.class public Lcom/android/settings/SettingsLicenseActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "SettingsLicenseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SettingsLicenseActivity;)Lcom/android/internal/app/AlertController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/settings/SettingsLicenseActivity;->mAlert:Lcom/android/internal/app/AlertController;

    return-object v0
.end method

.method private showErrorAndFinish()V
    .locals 2

    .prologue
    .line 119
    const v0, 0x7f080329

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->finish()V

    .line 122
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const-string v1, "ro.config.license_path"

    const-string v2, "/system/etc/NOTICE.html.gz"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 54
    .local v9, fileName:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    const-string v1, "SettingsLicenseActivity"

    const-string v2, "The system property for the license file is empty."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    const/4 v10, 0x0

    .line 61
    .local v10, inputReader:Ljava/io/InputStreamReader;
    const/4 v6, 0x0

    .line 63
    .local v6, data:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v1, 0x800

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 64
    .end local v6           #data:Ljava/lang/StringBuilder;
    .local v7, data:Ljava/lang/StringBuilder;
    const/16 v1, 0x800

    :try_start_1
    new-array v14, v1, [C

    .line 66
    .local v14, tmp:[C
    const-string v1, ".gz"

    invoke-virtual {v9, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    new-instance v11, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .end local v10           #inputReader:Ljava/io/InputStreamReader;
    .local v11, inputReader:Ljava/io/InputStreamReader;
    move-object v10, v11

    .line 72
    .end local v11           #inputReader:Ljava/io/InputStreamReader;
    .restart local v10       #inputReader:Ljava/io/InputStreamReader;
    :goto_1
    invoke-virtual {v10, v14}, Ljava/io/InputStreamReader;->read([C)I

    move-result v12

    .local v12, numRead:I
    if-ltz v12, :cond_3

    .line 73
    const/4 v1, 0x0

    invoke-virtual {v7, v14, v1, v12}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_1

    .line 75
    .end local v12           #numRead:I
    .end local v14           #tmp:[C
    :catch_0
    move-exception v1

    move-object v8, v1

    move-object v6, v7

    .line 76
    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    .local v8, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_2
    const-string v1, "SettingsLicenseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "License HTML file not found at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 77
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    if-eqz v10, :cond_0

    .line 86
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 88
    :catch_1
    move-exception v8

    .line 89
    .local v8, e:Ljava/io/IOException;
    const-string v1, "SettingsLicenseActivity"

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 70
    .end local v6           #data:Ljava/lang/StringBuilder;
    .end local v8           #e:Ljava/io/IOException;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    .restart local v14       #tmp:[C
    :cond_2
    :try_start_4
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .end local v10           #inputReader:Ljava/io/InputStreamReader;
    .restart local v11       #inputReader:Ljava/io/InputStreamReader;
    move-object v10, v11

    .end local v11           #inputReader:Ljava/io/InputStreamReader;
    .restart local v10       #inputReader:Ljava/io/InputStreamReader;
    goto :goto_1

    .line 85
    .restart local v12       #numRead:I
    :cond_3
    if-eqz v10, :cond_4

    .line 86
    :try_start_5
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 93
    :cond_4
    :goto_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 94
    const-string v1, "SettingsLicenseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "License HTML is empty (from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V

    goto/16 :goto_0

    .line 88
    :catch_2
    move-exception v8

    .line 89
    .restart local v8       #e:Ljava/io/IOException;
    const-string v1, "SettingsLicenseActivity"

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 79
    .end local v7           #data:Ljava/lang/StringBuilder;
    .end local v8           #e:Ljava/io/IOException;
    .end local v12           #numRead:I
    .end local v14           #tmp:[C
    .restart local v6       #data:Ljava/lang/StringBuilder;
    :catch_3
    move-exception v1

    move-object v8, v1

    .line 80
    .restart local v8       #e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    const-string v1, "SettingsLicenseActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error reading license HTML file at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    invoke-direct {p0}, Lcom/android/settings/SettingsLicenseActivity;->showErrorAndFinish()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 85
    if-eqz v10, :cond_0

    .line 86
    :try_start_7
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 88
    :catch_4
    move-exception v8

    .line 89
    const-string v1, "SettingsLicenseActivity"

    invoke-static {v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 84
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    .line 85
    :goto_5
    if-eqz v10, :cond_5

    .line 86
    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 90
    :cond_5
    :goto_6
    throw v1

    .line 88
    :catch_5
    move-exception v8

    .line 89
    .restart local v8       #e:Ljava/io/IOException;
    const-string v2, "SettingsLicenseActivity"

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 99
    .end local v6           #data:Ljava/lang/StringBuilder;
    .end local v8           #e:Ljava/io/IOException;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    .restart local v12       #numRead:I
    .restart local v14       #tmp:[C
    :cond_6
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 102
    .local v0, webView:Landroid/webkit/WebView;
    const/4 v1, 0x0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/android/settings/SettingsLicenseActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsLicenseActivity$1;-><init>(Lcom/android/settings/SettingsLicenseActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 111
    iget-object v13, p0, Lcom/android/settings/SettingsLicenseActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 112
    .local v13, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f08032a

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsLicenseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 113
    iput-object v0, v13, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 114
    const/4 v1, 0x1

    iput-boolean v1, v13, Lcom/android/internal/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/SettingsLicenseActivity;->setupAlert()V

    goto/16 :goto_0

    .line 84
    .end local v0           #webView:Landroid/webkit/WebView;
    .end local v12           #numRead:I
    .end local v13           #p:Lcom/android/internal/app/AlertController$AlertParams;
    .end local v14           #tmp:[C
    :catchall_1
    move-exception v1

    move-object v6, v7

    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    goto :goto_5

    .line 79
    .end local v6           #data:Ljava/lang/StringBuilder;
    .restart local v7       #data:Ljava/lang/StringBuilder;
    :catch_6
    move-exception v1

    move-object v8, v1

    move-object v6, v7

    .end local v7           #data:Ljava/lang/StringBuilder;
    .restart local v6       #data:Ljava/lang/StringBuilder;
    goto :goto_4

    .line 75
    :catch_7
    move-exception v1

    move-object v8, v1

    goto/16 :goto_2
.end method
