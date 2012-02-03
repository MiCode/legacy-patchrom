.class Lcom/android/settings/vpn/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    return-void
.end method

.method static copyFiles(Ljava/io/File;Ljava/io/File;)Z
    .locals 9
    .parameter "sourceLocation"
    .parameter "targetLocation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 95
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v7

    .line 119
    :goto_0
    return v6

    .line 97
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 98
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 99
    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    .line 101
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, children:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v6, v1

    if-ge v2, v6, :cond_4

    .line 103
    new-instance v6, Ljava/io/File;

    aget-object v7, v1, v2

    invoke-direct {v6, p0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    aget-object v8, v1, v2

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/android/settings/vpn/Util;->copyFiles(Ljava/io/File;Ljava/io/File;)Z

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 106
    .end local v1           #children:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 107
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 108
    .local v3, in:Ljava/io/InputStream;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 111
    .local v5, out:Ljava/io/OutputStream;
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 113
    .local v0, buf:[B
    :goto_2
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .local v4, len:I
    if-lez v4, :cond_3

    .line 114
    invoke-virtual {v5, v0, v7, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 116
    :cond_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 117
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 119
    .end local v0           #buf:[B
    .end local v3           #in:Ljava/io/InputStream;
    .end local v4           #len:I
    .end local v5           #out:Ljava/io/OutputStream;
    :cond_4
    const/4 v6, 0x1

    goto :goto_0
.end method

.method static copyFiles(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "sourcePath"
    .parameter "targetPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/settings/vpn/Util;->copyFiles(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static createErrorDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;
    .locals 3
    .parameter "c"
    .parameter "message"
    .parameter "okListener"

    .prologue
    .line 124
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    .local v0, b:Landroid/app/AlertDialog$Builder;
    if-eqz p2, :cond_0

    .line 129
    const v1, 0x7f080498

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 133
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1

    .line 131
    :cond_0
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method static deleteFile(Ljava/io/File;)V
    .locals 1
    .parameter "f"

    .prologue
    .line 69
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/vpn/Util;->deleteFile(Ljava/io/File;Z)V

    .line 70
    return-void
.end method

.method static deleteFile(Ljava/io/File;Z)V
    .locals 5
    .parameter "f"
    .parameter "toDeleteSelf"

    .prologue
    .line 73
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .local v0, arr$:[Ljava/io/File;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .local v1, child:Ljava/io/File;
    const/4 v4, 0x1

    invoke-static {v1, v4}, Lcom/android/settings/vpn/Util;->deleteFile(Ljava/io/File;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #child:Ljava/io/File;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 77
    :cond_1
    return-void
.end method

.method static deleteFile(Ljava/lang/String;)V
    .locals 1
    .parameter "path"

    .prologue
    .line 61
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settings/vpn/Util;->deleteFile(Ljava/io/File;)V

    .line 62
    return-void
.end method

.method static showErrorMessage(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .parameter "c"
    .parameter "message"
    .parameter "listener"

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/android/settings/vpn/Util;->createErrorDialog(Landroid/content/Context;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 58
    return-void
.end method

.method static showShortToastMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "message"

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 37
    return-void
.end method
