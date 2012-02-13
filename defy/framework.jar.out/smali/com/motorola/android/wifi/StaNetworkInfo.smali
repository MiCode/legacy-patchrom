.class public Lcom/motorola/android/wifi/StaNetworkInfo;
.super Ljava/lang/Object;
.source "StaNetworkInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StaNetworkInfo"

.field private static final clientDevInfoPattern:Ljava/util/regex/Pattern;


# instance fields
.field public ip:Ljava/lang/String;

.field public mac:Ljava/lang/String;

.field public name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/wifi/StaNetworkInfo;->clientDevInfoPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "mac"
    .parameter "ip"
    .parameter "name"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->mac:Ljava/lang/String;

    iput-object p2, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->ip:Ljava/lang/String;

    iput-object p3, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public parseNetworkInfo(Ljava/lang/String;)Z
    .locals 5
    .parameter "line"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/motorola/android/wifi/StaNetworkInfo;->clientDevInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .local v0, result:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    array-length v1, v0

    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    aget-object v1, v0, v4

    iput-object v1, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->mac:Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->ip:Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->name:Ljava/lang/String;

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method public parseNetworkInfoList(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .parameter "buf"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/wifi/StaNetworkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v10, "exception when close reader:"

    const-string v6, "BufferedReader closed"

    const-string v9, "StaNetworkInfo"

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, staNetworkInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/wifi/StaNetworkInfo;>;"
    const/4 v1, 0x0

    .local v1, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/StringReader;

    invoke-direct {v6, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .end local v1           #in:Ljava/io/BufferedReader;
    .local v2, in:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .local v3, line:Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v6, "StaNetworkInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseNetworkInfoList line:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/motorola/android/wifi/StaNetworkInfo;

    invoke-direct {v4}, Lcom/motorola/android/wifi/StaNetworkInfo;-><init>()V

    .local v4, staNetworkInfo:Lcom/motorola/android/wifi/StaNetworkInfo;
    invoke-virtual {v4, v3}, Lcom/motorola/android/wifi/StaNetworkInfo;->parseNetworkInfo(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v4           #staNetworkInfo:Lcom/motorola/android/wifi/StaNetworkInfo;
    :catch_0
    move-exception v6

    move-object v0, v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    const-string v6, "StaNetworkInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception when read StaNetworkInfo:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    :try_start_3
    const-string v6, "StaNetworkInfo"

    const-string v7, "BufferedReader closed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const/4 v1, 0x0

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    :goto_2
    return-object v5

    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #staNetworkInfo:Lcom/motorola/android/wifi/StaNetworkInfo;
    :cond_1
    :try_start_4
    const-string v6, "StaNetworkInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "misformatted device infor: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .end local v4           #staNetworkInfo:Lcom/motorola/android/wifi/StaNetworkInfo;
    :catchall_0
    move-exception v6

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .end local v3           #line:Ljava/lang/String;
    .restart local v1       #in:Ljava/io/BufferedReader;
    :goto_3
    if-eqz v1, :cond_2

    :try_start_5
    const-string v7, "StaNetworkInfo"

    const-string v8, "BufferedReader closed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    const/4 v1, 0x0

    :cond_2
    :goto_4
    throw v6

    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    :try_start_6
    const-string v6, "StaNetworkInfo"

    const-string v7, "BufferedReader closed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    const/4 v1, 0x0

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    :catch_1
    move-exception v6

    move-object v0, v6

    .local v0, e:Ljava/io/IOException;
    const-string v6, "StaNetworkInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception when close reader:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto :goto_2

    .end local v3           #line:Ljava/lang/String;
    .local v0, e:Ljava/lang/Exception;
    :catch_2
    move-exception v6

    move-object v0, v6

    .local v0, e:Ljava/io/IOException;
    const-string v6, "StaNetworkInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception when close reader:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    move-object v0, v7

    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "StaNetworkInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception when close reader:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v6

    goto :goto_3

    :catch_4
    move-exception v6

    move-object v0, v6

    goto/16 :goto_1

    .end local v1           #in:Ljava/io/BufferedReader;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #line:Ljava/lang/String;
    :cond_4
    move-object v1, v2

    .end local v2           #in:Ljava/io/BufferedReader;
    .restart local v1       #in:Ljava/io/BufferedReader;
    goto/16 :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .local v0, none:Ljava/lang/String;
    const-string v2, "mac: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->mac:Ljava/lang/String;

    if-nez v3, :cond_0

    move-object v3, v0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", ip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->ip:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->name:Ljava/lang/String;

    if-nez v3, :cond_2

    const-string v3, "Unknown"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v3, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->mac:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->ip:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/motorola/android/wifi/StaNetworkInfo;->name:Ljava/lang/String;

    goto :goto_2
.end method
