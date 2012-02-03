.class public final Lcom/android/server/ChangeKeys;
.super Ljava/lang/Object;
.source "ChangeKeys.java"


# static fields
.field private static FLAG_FILE:Ljava/lang/String; = null

.field private static PUBLIC_KEYS_FILE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ChangeKeys"

.field private static TRIGGER_FILE:Ljava/lang/String;

.field private static sNewKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOldKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    .line 24
    const-string v0, "/system/etc/need_to_change_keys"

    sput-object v0, Lcom/android/server/ChangeKeys;->TRIGGER_FILE:Ljava/lang/String;

    .line 25
    const-string v0, "/system/etc/public.keys"

    sput-object v0, Lcom/android/server/ChangeKeys;->PUBLIC_KEYS_FILE:Ljava/lang/String;

    .line 26
    const-string v0, "/data/system/changed_flag"

    sput-object v0, Lcom/android/server/ChangeKeys;->FLAG_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deleteFile(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 82
    const-string v1, "ChangeKeys"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DELETE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fail!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 85
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "sb"
    .parameter "startStr"
    .parameter "endStr"

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 30
    .local v3, startIdx:I
    const/4 p1, -0x1

    if-eq v3, p1, :cond_1

    .line 31
    .end local p1
    invoke-virtual {p0, p2, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 32
    .local v2, endIdx:I
    const-string p1, "key="

    invoke-virtual {p0, p1, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result p1

    .line 34
    .local p1, key:I
    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-ge p1, v2, :cond_3

    .line 36
    const-string v0, "<cert index="

    invoke-virtual {p0, v0, v3}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 37
    .local v1, certStart:I
    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    .line 38
    const-string v0, "\" />"

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 40
    .local v0, certEnd:I
    const/4 v4, 0x1

    sub-int/2addr p1, v4

    invoke-virtual {p0, v1, p1}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    .end local p1           #key:I
    move-result-object p1

    .line 41
    .local p1, cert:Ljava/lang/String;
    const-string v4, "\" />"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    .end local v0           #certEnd:I
    move-result-object v0

    .line 43
    .local v0, certkey:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    .end local p2
    add-int/2addr p2, v2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, v3, p2}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 45
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result p2

    .line 46
    .local p2, newCertIdx:I
    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 47
    .end local p1           #cert:Ljava/lang/String;
    const-string p1, "\" />"

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;I)I

    move-result p1

    .line 48
    .local p1, newCertEndIdx:I
    const-string v1, "\" />"

    .end local v1           #certStart:I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p2, p1, v0}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .end local p1           #newCertEndIdx:I
    const/4 p0, 0x1

    .line 65
    .end local v0           #certkey:Ljava/lang/String;
    .end local v2           #endIdx:I
    .end local p0
    .end local p2           #newCertIdx:I
    :goto_0
    return p0

    .line 52
    .restart local v0       #certkey:Ljava/lang/String;
    .restart local v1       #certStart:I
    .restart local v2       #endIdx:I
    .restart local p0
    .restart local p2       #newCertIdx:I
    :cond_0
    const-string p0, "ChangeKeys"

    .end local p0
    const-string p1, "Can\'t find new cert element. Error"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    .end local v0           #certkey:Ljava/lang/String;
    .end local v1           #certStart:I
    .end local v2           #endIdx:I
    .end local p2           #newCertIdx:I
    :cond_1
    :goto_1
    const/4 p0, 0x0

    goto :goto_0

    .line 54
    .restart local v1       #certStart:I
    .restart local v2       #endIdx:I
    .restart local p0
    .local p1, key:I
    .local p2, endStr:Ljava/lang/String;
    :cond_2
    const-string p0, "ChangeKeys"

    .end local p0
    const-string p1, "Can\'t find cert element. Error"

    .end local p1           #key:I
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 58
    .end local v1           #certStart:I
    .restart local p0
    .restart local p1       #key:I
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    .end local p1           #key:I
    add-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v3, p1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 60
    const/4 p0, 0x1

    goto :goto_0
.end method

.method private static deletePermission(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 2
    .parameter "sb"
    .parameter "str"

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 70
    .local v0, startIdx:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 76
    :cond_0
    return-void
.end method

.method public static process()Z
    .locals 10

    .prologue
    .line 93
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/ChangeKeys;->TRIGGER_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, triggerFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .end local v0           #triggerFile:Ljava/io/File;
    if-nez v0, :cond_1

    .line 95
    const-string v0, "ChangeKeys"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChangeKeys : no "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/ChangeKeys;->TRIGGER_FILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": ignore to run changekeys."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const/4 v0, 0x0

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    new-instance v4, Ljava/io/File;

    sget-object v0, Lcom/android/server/ChangeKeys;->FLAG_FILE:Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v4, flagFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    const-string v0, "ChangeKeys"

    const-string v1, "Already did ChangeKeys before."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :cond_2
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    const-string v0, "packages.xml"

    .line 119
    .local v0, PACKAGES_XML_FILE_NAME:Ljava/lang/String;
    const-string v1, "/data/system/"

    .line 120
    .local v1, basePath:Ljava/lang/String;
    const/4 v3, 0x0

    .line 121
    .local v3, changed:Z
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    .local v2, packagesXmlFile:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_16

    .line 124
    const-string v1, "/dbdata/system/"

    .line 125
    new-instance v2, Ljava/io/File;

    .end local v2           #packagesXmlFile:Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #packagesXmlFile:Ljava/io/File;
    move-object v7, v2

    .end local v2           #packagesXmlFile:Ljava/io/File;
    .local v7, packagesXmlFile:Ljava/io/File;
    move-object v2, v1

    .line 127
    .end local v1           #basePath:Ljava/lang/String;
    .local v2, basePath:Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 129
    const-string v0, "ChangeKeys"

    .end local v0           #PACKAGES_XML_FILE_NAME:Ljava/lang/String;
    const-string v1, "ChangeKeys : there is no packages.xml."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    .end local v2           #basePath:Ljava/lang/String;
    .end local v3           #changed:Z
    .end local v7           #packagesXmlFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 112
    const/4 v0, 0x0

    goto :goto_0

    .line 113
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 114
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    .local v0, PACKAGES_XML_FILE_NAME:Ljava/lang/String;
    .restart local v2       #basePath:Ljava/lang/String;
    .restart local v3       #changed:Z
    .restart local v7       #packagesXmlFile:Ljava/io/File;
    :cond_3
    new-instance v5, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ".journal"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    .local v5, journalFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .end local v2           #basePath:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #PACKAGES_XML_FILE_NAME:Ljava/lang/String;
    const-string v2, ".bak"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, backupFile:Ljava/io/File;
    invoke-static {v7, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 140
    const-string v0, "ChangeKeys"

    const-string v1, "ChangeKeys : error on backup packages.xml to packages.xml.bak."

    .end local v1           #backupFile:Ljava/io/File;
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 142
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 149
    .restart local v1       #backupFile:Ljava/io/File;
    :cond_4
    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/server/ChangeKeys;->PUBLIC_KEYS_FILE:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, publicKeysFile:Ljava/io/File;
    :try_start_1
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 154
    .local v6, keyIn:Ljava/io/BufferedReader;
    const/4 v0, 0x0

    .local v0, keyIdx:I
    move v2, v0

    .line 155
    .end local v0           #keyIdx:I
    .local v2, keyIdx:I
    :cond_5
    :goto_2
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 156
    const-string v8, "#"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 159
    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_6

    .line 160
    sget-object v8, Lcom/android/server/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :goto_3
    add-int/lit8 v0, v2, 0x1

    .end local v2           #keyIdx:I
    .local v0, keyIdx:I
    move v2, v0

    .end local v0           #keyIdx:I
    .restart local v2       #keyIdx:I
    goto :goto_2

    .line 162
    .local v0, key:Ljava/lang/String;
    :cond_6
    sget-object v8, Lcom/android/server/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_3

    .line 166
    .end local v0           #key:Ljava/lang/String;
    .end local v2           #keyIdx:I
    .end local v6           #keyIn:Ljava/io/BufferedReader;
    :catch_2
    move-exception v0

    .line 168
    .local v0, e1:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 169
    const-string v0, "ChangeKeys"

    .end local v0           #e1:Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #backupFile:Ljava/io/File;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChangeKeys : no "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/ChangeKeys;->PUBLIC_KEYS_FILE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": ignore to run changekeys."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 171
    .restart local v1       #backupFile:Ljava/io/File;
    :catch_3
    move-exception v0

    .line 173
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 174
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 175
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 181
    .local v0, key:Ljava/lang/String;
    .restart local v2       #keyIdx:I
    .restart local v6       #keyIn:Ljava/io/BufferedReader;
    :cond_7
    sget-object v0, Lcom/android/server/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    .end local v0           #key:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v2, Lcom/android/server/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    .end local v2           #keyIdx:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_8

    .line 182
    const-string v0, "ChangeKeys"

    const-string v1, "ChangeKeys : mismatch count of keys"

    .end local v1           #backupFile:Ljava/io/File;
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 190
    .restart local v1       #backupFile:Ljava/io/File;
    :cond_8
    :try_start_2
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v6, "utf-8"

    .end local v6           #keyIn:Ljava/io/BufferedReader;
    invoke-direct {v2, v0, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 193
    .local v2, in:Ljava/io/InputStreamReader;
    const/16 v0, 0x1000

    new-array v0, v0, [C

    .line 194
    .local v0, buf:[C
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 195
    .local v8, sb:Ljava/lang/StringBuffer;
    :goto_4
    invoke-virtual {v2, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v6

    .local v6, nread:I
    const/4 v9, -0x1

    if-eq v6, v9, :cond_a

    .line 196
    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_4

    .line 240
    .end local v0           #buf:[C
    .end local v2           #in:Ljava/io/InputStreamReader;
    .end local v6           #nread:I
    .end local v8           #sb:Ljava/lang/StringBuffer;
    :catch_4
    move-exception v0

    move-object v2, v0

    move v0, v3

    .line 241
    .end local v3           #changed:Z
    .local v0, changed:Z
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    const/4 v0, 0x0

    .line 248
    .end local v0           #changed:Z
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v2

    .end local v2           #e:Ljava/io/FileNotFoundException;
    if-nez v2, :cond_9

    .line 249
    const-string v2, "ChangeKeys"

    const-string v3, "journalFile delete fail!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_9
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .end local v1           #backupFile:Ljava/io/File;
    if-nez v1, :cond_0

    .line 251
    const-string v1, "ChangeKeys"

    const-string v2, "backupFile delete fail!!"

    :goto_6
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 198
    .local v0, buf:[C
    .restart local v1       #backupFile:Ljava/io/File;
    .local v2, in:Ljava/io/InputStreamReader;
    .restart local v3       #changed:Z
    .restart local v6       #nread:I
    .restart local v8       #sb:Ljava/lang/StringBuffer;
    :cond_a
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 200
    const/4 v0, 0x0

    .local v0, i:I
    move v2, v0

    .end local v0           #i:I
    .local v2, i:I
    move v0, v3

    .end local v3           #changed:Z
    .end local v6           #nread:I
    .local v0, changed:Z
    :goto_7
    :try_start_5
    sget-object v3, Lcom/android/server/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    .line 201
    sget-object v3, Lcom/android/server/ChangeKeys;->sOldKeys:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 202
    .local v6, key:Ljava/lang/String;
    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 203
    .local v3, idx:I
    if-ltz v3, :cond_b

    .line 204
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    .end local v6           #key:Ljava/lang/String;
    add-int v9, v3, v6

    sget-object v6, Lcom/android/server/ChangeKeys;->sNewKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v3, v9, v6}, Ljava/lang/StringBuffer;->replace(IILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const/4 v0, 0x1

    .line 200
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 209
    .end local v3           #idx:I
    :cond_c
    const/4 v2, 0x1

    if-ne v2, v0, :cond_e

    .line 210
    .end local v2           #i:I
    const-string v2, "<package name=\"com.sec.android.app.samsungapps\""

    const-string v3, "</package>"

    invoke-static {v8, v2, v3}, Lcom/android/server/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 211
    const-string v2, "<updated-package name=\"com.sec.android.app.samsungapps\""

    const-string v3, "</updated-package>"

    invoke-static {v8, v2, v3}, Lcom/android/server/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 212
    const-string v2, "<package name=\"com.sec.android.app.samsungapps.una\""

    const-string v3, "</package>"

    invoke-static {v8, v2, v3}, Lcom/android/server/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 213
    const-string v2, "<updated-package name=\"com.sec.android.app.samsungapps.una\""

    const-string v3, "</updated-package>"

    invoke-static {v8, v2, v3}, Lcom/android/server/ChangeKeys;->deletePackage(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Z

    .line 214
    const-string v2, "<item name=\"com.sec.android.provider.una.astore.permission.READ\" package=\"com.sec.android.app.samsungapps.una\" />"

    invoke-static {v8, v2}, Lcom/android/server/ChangeKeys;->deletePermission(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 215
    const-string v2, "<item name=\"com.sec.android.provider.una.astore.permission.WRITE\" package=\"com.sec.android.app.samsungapps.una\" />"

    invoke-static {v8, v2}, Lcom/android/server/ChangeKeys;->deletePermission(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 216
    const-string v2, "/data/app/com.sec.android.app.samsungapps-1.apk"

    invoke-static {v2}, Lcom/android/server/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 217
    const-string v2, "/data/app/com.sec.android.app.samsungapps-2.apk"

    invoke-static {v2}, Lcom/android/server/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    .line 218
    :cond_d
    const-string v2, "/data/app/com.sec.android.app.samsungapps.una-1.apk"

    invoke-static {v2}, Lcom/android/server/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 219
    const-string v2, "/data/app/com.sec.android.app.samsungapps.una-2.apk"

    invoke-static {v2}, Lcom/android/server/ChangeKeys;->deleteFile(Ljava/lang/String;)Z

    .line 222
    :cond_e
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 223
    .local v2, out:Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v6, "utf-8"

    invoke-direct {v3, v2, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 224
    .local v3, sout:Ljava/io/OutputStreamWriter;
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    invoke-virtual {v2}, Ljava/io/FileDescriptor;->sync()V

    .line 226
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 228
    invoke-static {v5, v7}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 229
    const-string v2, "ChangeKeys"

    const-string v3, "ChangeKeys : failed to copy packages.xml.journal to packages.xml."

    .end local v3           #sout:Ljava/io/OutputStreamWriter;
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {v1, v7}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 231
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 248
    :goto_8
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    .end local v0           #changed:Z
    if-nez v0, :cond_f

    .line 249
    const-string v0, "ChangeKeys"

    const-string v2, "journalFile delete fail!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_f
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_10

    .line 251
    const-string v0, "ChangeKeys"

    const-string v1, "backupFile delete fail!!"

    .end local v1           #backupFile:Ljava/io/File;
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_10
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 234
    .restart local v0       #changed:Z
    .restart local v1       #backupFile:Ljava/io/File;
    .restart local v3       #sout:Ljava/io/OutputStreamWriter;
    :cond_11
    const/4 v2, 0x1

    if-ne v2, v0, :cond_12

    .line 235
    :try_start_6
    const-string v2, "ChangeKeys"

    const-string v3, "ChangeKeys : succeed in changing keys."

    .end local v3           #sout:Ljava/io/OutputStreamWriter;
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 240
    :catch_5
    move-exception v2

    goto/16 :goto_5

    .line 237
    .restart local v3       #sout:Ljava/io/OutputStreamWriter;
    :cond_12
    const-string v2, "ChangeKeys"

    const-string v3, "ChangeKeys: success process, but there is no old keys."

    .end local v3           #sout:Ljava/io/OutputStreamWriter;
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_8

    .line 243
    :catch_6
    move-exception v2

    .line 244
    .end local v8           #sb:Ljava/lang/StringBuffer;
    .local v2, e:Ljava/io/IOException;
    :goto_9
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 245
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 246
    const/4 v0, 0x0

    .line 248
    .end local v0           #changed:Z
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v2

    .end local v2           #e:Ljava/io/IOException;
    if-nez v2, :cond_13

    .line 249
    const-string v2, "ChangeKeys"

    const-string v3, "journalFile delete fail!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_13
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    .end local v1           #backupFile:Ljava/io/File;
    if-nez v1, :cond_0

    .line 251
    const-string v1, "ChangeKeys"

    const-string v2, "backupFile delete fail!!"

    goto/16 :goto_6

    .line 248
    .restart local v1       #backupFile:Ljava/io/File;
    .local v3, changed:Z
    :catchall_0
    move-exception v0

    move-object v2, v0

    move v0, v3

    .end local v3           #changed:Z
    .restart local v0       #changed:Z
    :goto_a
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v0

    .end local v0           #changed:Z
    if-nez v0, :cond_14

    .line 249
    const-string v0, "ChangeKeys"

    const-string v3, "journalFile delete fail!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_14
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_15

    .line 251
    const-string v0, "ChangeKeys"

    const-string v1, "backupFile delete fail!!"

    .end local v1           #backupFile:Ljava/io/File;
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_15
    throw v2

    .restart local v0       #changed:Z
    .restart local v1       #backupFile:Ljava/io/File;
    :catchall_1
    move-exception v2

    goto :goto_a

    .line 243
    .end local v0           #changed:Z
    .restart local v3       #changed:Z
    :catch_7
    move-exception v0

    move-object v2, v0

    move v0, v3

    .end local v3           #changed:Z
    .restart local v0       #changed:Z
    goto :goto_9

    .end local v5           #journalFile:Ljava/io/File;
    .end local v7           #packagesXmlFile:Ljava/io/File;
    .local v0, PACKAGES_XML_FILE_NAME:Ljava/lang/String;
    .local v1, basePath:Ljava/lang/String;
    .local v2, packagesXmlFile:Ljava/io/File;
    .restart local v3       #changed:Z
    :cond_16
    move-object v7, v2

    .end local v2           #packagesXmlFile:Ljava/io/File;
    .restart local v7       #packagesXmlFile:Ljava/io/File;
    move-object v2, v1

    .end local v1           #basePath:Ljava/lang/String;
    .local v2, basePath:Ljava/lang/String;
    goto/16 :goto_1
.end method
