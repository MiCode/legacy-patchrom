.class Lcom/android/internal/telephony/gsm/RoamStatusHandler$NIDGrouper;
.super Ljava/lang/Object;
.source "RoamStatusHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/RoamStatusHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NIDGrouper"
.end annotation


# static fields
.field static mcc:Ljava/lang/String;

.field static nids:Ljava/util/ArrayList;
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
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/RoamStatusHandler$NIDGrouper;->nids:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSameGroup(Ljava/lang/String;)Z
    .locals 1
    .parameter "nid"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/RoamStatusHandler$NIDGrouper;->nids:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setGrouper(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "cc"
    .parameter "ids"

    .prologue
    const-string v8, ","

    sput-object p1, Lcom/android/internal/telephony/gsm/RoamStatusHandler$NIDGrouper;->mcc:Ljava/lang/String;

    const/4 v0, 0x0

    .local v0, found:Z
    const-string v1, ""

    .local v1, group:Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, tmps:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_1

    aget-object v6, v4, v2

    const-string v7, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, ts:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    array-length v6, v5

    if-ge v3, v6, :cond_0

    aget-object v6, v5, v3

    sget-object v7, Lcom/android/internal/telephony/gsm/RoamStatusHandler$NIDGrouper;->mcc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    aget-object v1, v4, v2

    :cond_0
    if-eqz v0, :cond_3

    .end local v3           #j:I
    .end local v5           #ts:[Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_4

    const-string v6, ","

    invoke-virtual {v1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .restart local v5       #ts:[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_2
    array-length v6, v5

    if-ge v2, v6, :cond_4

    sget-object v6, Lcom/android/internal/telephony/gsm/RoamStatusHandler$NIDGrouper;->nids:Ljava/util/ArrayList;

    aget-object v7, v5, v2

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .restart local v3       #j:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3           #j:I
    .end local v5           #ts:[Ljava/lang/String;
    :cond_4
    return-void
.end method
