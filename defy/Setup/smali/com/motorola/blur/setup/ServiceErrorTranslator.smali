.class public final Lcom/motorola/blur/setup/ServiceErrorTranslator;
.super Ljava/lang/Object;
.source "ServiceErrorTranslator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/setup/ServiceErrorTranslator$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SetupBSET"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructSNPError(Landroid/content/Context;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "error"
    .parameter "providerPrettyName"

    .prologue
    .line 59
    invoke-static {p1}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translateSNPError(Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)I

    move-result v0

    .line 60
    .local v0, resId:I
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static constructServiceError(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "error"
    .parameter "snpError"
    .parameter "prettyName"

    .prologue
    .line 34
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->SNPError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-ne p1, v0, :cond_0

    .line 35
    invoke-static {p0, p2, p3}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->constructSNPError(Landroid/content/Context;Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getPrettyName(Landroid/content/Context;J)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "providerId"

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 42
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "pretty_name"

    aput-object v0, v2, v8

    .line 43
    .local v2, projection:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 44
    .local v7, provider:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/motorola/blur/provider/DeviceSetup$Providers;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 49
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 50
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 53
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 55
    :cond_1
    return-object v7
.end method

.method public static final translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I
    .locals 3
    .parameter "context"
    .parameter "code"

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    sget-object p1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->NullPointerError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 110
    const-string v0, "SetupBSET"

    const-string v1, "translating a null error code!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$blur$ErrorTranslator$ErrorCodes:[I

    invoke-virtual {p1}, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 173
    const v0, 0x7f0c00e3

    :goto_0
    return v0

    .line 115
    :pswitch_0
    const v0, 0x7f0c00de

    goto :goto_0

    .line 117
    :pswitch_1
    const v0, 0x7f0c00df

    goto :goto_0

    .line 119
    :pswitch_2
    const v0, 0x7f0c00e0

    goto :goto_0

    .line 121
    :pswitch_3
    const v0, 0x7f0c00e1

    goto :goto_0

    .line 123
    :pswitch_4
    const v0, 0x7f0c00e2

    goto :goto_0

    .line 125
    :pswitch_5
    const v0, 0x7f0c0089

    goto :goto_0

    .line 128
    :pswitch_6
    const v0, 0x7f0c00e4

    goto :goto_0

    .line 130
    :pswitch_7
    const v0, 0x7f0c00e7

    goto :goto_0

    .line 132
    :pswitch_8
    const v0, 0x7f0c00e8

    goto :goto_0

    .line 134
    :pswitch_9
    const v0, 0x7f0c00e9

    goto :goto_0

    .line 136
    :pswitch_a
    const v0, 0x7f0c00ea

    goto :goto_0

    .line 138
    :pswitch_b
    const v0, 0x7f0c00eb

    goto :goto_0

    .line 141
    :pswitch_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_1

    .line 142
    const v0, 0x30a0084

    goto :goto_0

    .line 144
    :cond_1
    const v0, 0x7f0c00ed

    goto :goto_0

    .line 147
    :pswitch_d
    const v0, 0x7f0c00ee

    goto :goto_0

    .line 149
    :pswitch_e
    const v0, 0x7f0c00f0

    goto :goto_0

    .line 151
    :pswitch_f
    const v0, 0x7f0c00f1

    goto :goto_0

    .line 153
    :pswitch_10
    const v0, 0x7f0c00f2

    goto :goto_0

    .line 155
    :pswitch_11
    const v0, 0x7f0c00f4

    goto :goto_0

    .line 157
    :pswitch_12
    const v0, 0x7f0c00f6

    goto :goto_0

    .line 159
    :pswitch_13
    const v0, 0x7f0c00f7

    goto :goto_0

    .line 161
    :pswitch_14
    const v0, 0x7f0c00f8

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public static final translateSNPError(Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;)I
    .locals 2
    .parameter "error"

    .prologue
    .line 64
    sget-object v0, Lcom/motorola/blur/setup/ServiceErrorTranslator$1;->$SwitchMap$com$motorola$blur$service$snpsettings$protocol$SnpErrors$SNPError:[I

    invoke-virtual {p0}, Lcom/motorola/blur/service/snpsettings/protocol/SnpErrors$SNPError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 96
    const v0, 0x7f0c0094

    :goto_0
    return v0

    .line 69
    :pswitch_0
    const v0, 0x7f0c00e4

    goto :goto_0

    .line 79
    :pswitch_1
    const v0, 0x7f0c00ee

    goto :goto_0

    .line 83
    :pswitch_2
    const v0, 0x7f0c00e6

    goto :goto_0

    .line 86
    :pswitch_3
    const v0, 0x7f0c00e5

    goto :goto_0

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
