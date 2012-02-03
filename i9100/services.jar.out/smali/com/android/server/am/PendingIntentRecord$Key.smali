.class final Lcom/android/server/am/PendingIntentRecord$Key;
.super Ljava/lang/Object;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PendingIntentRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Key"
.end annotation


# static fields
.field private static final ODD_PRIME_NUMBER:I = 0x25


# instance fields
.field final activity:Lcom/android/server/am/ActivityRecord;

.field final flags:I

.field final hashCode:I

.field final packageName:Ljava/lang/String;

.field final requestCode:I

.field final requestIntent:Landroid/content/Intent;

.field final requestResolvedType:Ljava/lang/String;

.field final type:I

.field final who:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;I)V
    .locals 3
    .parameter "_t"
    .parameter "_p"
    .parameter "_a"
    .parameter "_w"
    .parameter "_r"
    .parameter "_i"
    .parameter "_it"
    .parameter "_f"

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    .line 58
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    .line 60
    iput-object p4, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    .line 61
    iput p5, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    .line 62
    iput-object p6, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    .line 63
    iput-object p7, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    .line 64
    iput p8, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    .line 66
    const/16 v0, 0x17

    .line 67
    .local v0, hash:I
    mul-int/lit8 v1, v0, 0x25

    add-int/lit16 v0, p8, 0x353

    .line 68
    mul-int/lit8 v1, v0, 0x25

    add-int v0, v1, p5

    .line 69
    if-eqz p4, :cond_0

    .line 70
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 72
    :cond_0
    if-eqz p3, :cond_1

    .line 73
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 75
    :cond_1
    if-eqz p6, :cond_2

    .line 76
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p6}, Landroid/content/Intent;->filterHashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 78
    :cond_2
    if-eqz p7, :cond_3

    .line 79
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p7}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 81
    :cond_3
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 82
    mul-int/lit8 v1, v0, 0x25

    add-int v0, v1, p1

    .line 83
    iput v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    .line 86
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "otherObj"

    .prologue
    const/4 v4, 0x0

    .line 89
    if-nez p1, :cond_0

    move v2, v4

    .line 139
    :goto_0
    return v2

    .line 93
    :cond_0
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/android/server/am/PendingIntentRecord$Key;

    move-object v1, v0

    .line 94
    .local v1, other:Lcom/android/server/am/PendingIntentRecord$Key;
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-eq v2, v3, :cond_1

    move v2, v4

    .line 95
    goto :goto_0

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    .line 98
    goto :goto_0

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Lcom/android/server/am/ActivityRecord;

    if-eq v2, v3, :cond_3

    move v2, v4

    .line 101
    goto :goto_0

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eq v2, v3, :cond_5

    .line 104
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 105
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v4

    .line 106
    goto :goto_0

    .line 108
    :cond_4
    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v2, v4

    .line 109
    goto :goto_0

    .line 112
    :cond_5
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-eq v2, v3, :cond_6

    move v2, v4

    .line 113
    goto :goto_0

    .line 115
    :cond_6
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eq v2, v3, :cond_8

    .line 116
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v2, :cond_7

    .line 117
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_8

    move v2, v4

    .line 118
    goto :goto_0

    .line 120
    :cond_7
    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v2, :cond_8

    move v2, v4

    .line 121
    goto :goto_0

    .line 124
    :cond_8
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eq v2, v3, :cond_a

    .line 125
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 126
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v4

    .line 127
    goto :goto_0

    .line 129
    :cond_9
    iget-object v2, v1, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v2, :cond_a

    move v2, v4

    .line 130
    goto :goto_0

    .line 133
    :cond_a
    iget v2, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    iget v3, v1, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v2, v3, :cond_b

    move v2, v4

    .line 134
    goto/16 :goto_0

    .line 136
    :cond_b
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 137
    .end local v1           #other:Lcom/android/server/am/PendingIntentRecord$Key;
    :catch_0
    move-exception v2

    move v2, v4

    .line 139
    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->toShortString(ZZ)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " flags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, "<null>"

    goto :goto_0
.end method

.method typeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    packed-switch v0, :pswitch_data_0

    .line 164
    iget v0, p0, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 156
    :pswitch_0
    const-string v0, "startActivity"

    goto :goto_0

    .line 158
    :pswitch_1
    const-string v0, "broadcastIntent"

    goto :goto_0

    .line 160
    :pswitch_2
    const-string v0, "startService"

    goto :goto_0

    .line 162
    :pswitch_3
    const-string v0, "activityResult"

    goto :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
