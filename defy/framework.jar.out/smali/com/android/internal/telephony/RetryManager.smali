.class public Lcom/android/internal/telephony/RetryManager;
.super Ljava/lang/Object;
.source "RetryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/RetryManager$RetryRec;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "RetryManager"


# instance fields
.field private mMaxRetryCount:I

.field private mRetryArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/RetryManager$RetryRec;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private mRetryForever:Z

.field private rng:Ljava/util/Random;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/RetryManager;->rng:Ljava/util/Random;

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    const-string v0, "RetryManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private nextRandomizationTime(I)I
    .locals 2
    .parameter "index"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RetryManager$RetryRec;

    iget v0, v1, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    .local v0, randomTime:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/RetryManager;->rng:Ljava/util/Random;

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    goto :goto_0
.end method

.method private parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 7
    .parameter "name"
    .parameter "stringValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, value:I
    new-instance v1, Landroid/util/Pair;

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #value:I
    .local v1, retVal:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_0
    return-object v1

    .end local v1           #retVal:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "RetryManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bad value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .restart local v1       #retVal:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    goto :goto_0
.end method

.method private validateNonNegativeInt(Ljava/lang/String;I)Z
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    if-gez p2, :cond_0

    const-string v1, "RetryManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bad value: is < 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, retVal:Z
    :goto_0
    return v0

    .end local v0           #retVal:Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #retVal:Z
    goto :goto_0
.end method


# virtual methods
.method public configure(III)Z
    .locals 2
    .parameter "maxRetryCount"
    .parameter "retryTime"
    .parameter "randomizationTime"

    .prologue
    const/4 v1, 0x0

    const-string v0, "maxRetryCount"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const-string v0, "retryTime"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "randomizationTime"

    invoke-direct {p0, v0, p3}, Lcom/android/internal/telephony/RetryManager;->validateNonNegativeInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/telephony/RetryManager$RetryRec;

    invoke-direct {v1, p2, p3}, Lcom/android/internal/telephony/RetryManager$RetryRec;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public configure(Ljava/lang/String;)Z
    .locals 11
    .parameter "configStr"

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v7, "\""

    const-string v6, "\""

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "\""

    invoke-virtual {p1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v8

    invoke-virtual {p1, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v0, 0x0

    .local v0, defaultRandomization:I
    iput v9, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const-string v6, ","

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, strArray:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_a

    aget-object v6, v4, v1

    const-string v7, "="

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .local v3, splitStr:[Ljava/lang/String;
    aget-object v6, v3, v9

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    array-length v6, v3

    if-le v6, v8, :cond_6

    aget-object v6, v3, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    aget-object v6, v3, v9

    const-string v7, "default_randomization"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v3, v9

    aget-object v7, v3, v8

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .local v5, value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_1

    move v6, v9

    .end local v0           #defaultRandomization:I
    .end local v1           #i:I
    .end local v3           #splitStr:[Ljava/lang/String;
    .end local v4           #strArray:[Ljava/lang/String;
    .end local v5           #value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_1
    return v6

    .restart local v0       #defaultRandomization:I
    .restart local v1       #i:I
    .restart local v3       #splitStr:[Ljava/lang/String;
    .restart local v4       #strArray:[Ljava/lang/String;
    .restart local v5       #value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_1
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .end local v5           #value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    aget-object v6, v3, v9

    const-string v7, "max_retries"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "infinite"

    aget-object v7, v3, v8

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iput-boolean v8, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    goto :goto_2

    :cond_3
    aget-object v6, v3, v9

    aget-object v7, v3, v8

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .restart local v5       #value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v9

    goto :goto_1

    :cond_4
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    goto :goto_2

    .end local v5           #value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_5
    const-string v6, "RetryManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized configuration name value pair: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v4, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v9

    goto :goto_1

    :cond_6
    aget-object v6, v4, v1

    const-string v7, ":"

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aget-object v6, v3, v9

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    new-instance v2, Lcom/android/internal/telephony/RetryManager$RetryRec;

    invoke-direct {v2, v9, v9}, Lcom/android/internal/telephony/RetryManager$RetryRec;-><init>(II)V

    .local v2, rr:Lcom/android/internal/telephony/RetryManager$RetryRec;
    const-string v6, "delayTime"

    aget-object v7, v3, v9

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .restart local v5       #value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_7

    move v6, v9

    goto/16 :goto_1

    :cond_7
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    array-length v6, v3

    if-le v6, v8, :cond_9

    aget-object v6, v3, v8

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v8

    const-string v6, "randomizationTime"

    aget-object v7, v3, v8

    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/RetryManager;->parseNonNegativeInt(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_8

    move v6, v9

    goto/16 :goto_1

    :cond_8
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    :goto_3
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_9
    iput v0, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mRandomizationTime:I

    goto :goto_3

    .end local v2           #rr:Lcom/android/internal/telephony/RetryManager$RetryRec;
    .end local v3           #splitStr:[Ljava/lang/String;
    .end local v5           #value:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Boolean;Ljava/lang/Integer;>;"
    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-le v6, v7, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    :cond_b
    move v6, v8

    goto/16 :goto_1

    .end local v0           #defaultRandomization:I
    .end local v1           #i:I
    .end local v4           #strArray:[Ljava/lang/String;
    :cond_c
    move v6, v9

    goto/16 :goto_1
.end method

.method public getRetryCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    return v0
.end method

.method public getRetryTimer()I
    .locals 4

    .prologue
    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget-object v3, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    .local v0, index:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RetryManager$RetryRec;

    iget v2, v2, Lcom/android/internal/telephony/RetryManager$RetryRec;->mDelayTime:I

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RetryManager;->nextRandomizationTime(I)I

    move-result v3

    add-int v1, v2, v3

    .local v1, retVal:I
    :goto_1
    return v1

    .end local v0           #index:I
    .end local v1           #retVal:I
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .restart local v0       #index:I
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .restart local v1       #retVal:I
    goto :goto_1
.end method

.method public increaseRetryCount()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    :cond_0
    return-void
.end method

.method public isRetryForever()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    return v0
.end method

.method public isRetryNeeded()Z
    .locals 3

    .prologue
    iget-boolean v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget v2, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-ge v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .local v0, retVal:Z
    :goto_0
    return v0

    .end local v0           #retVal:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public resetRetryCount()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    return-void
.end method

.method public retryForeverUsingLastTimeout()V
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    return-void
.end method

.method public setRetryCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    const/4 v2, 0x0

    iput p1, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    iget v1, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mMaxRetryCount:I

    iput v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    if-gez v0, :cond_1

    iput v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryCount:I

    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/RetryManager;->mRetryForever:Z

    return-void
.end method
