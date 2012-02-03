.class Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCmd:Ljava/lang/String;

.field private final mUsage:J

.field final synthetic this$0:Lcom/android/server/enterprise/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter "command"
    .parameter "usage"

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1461
    iput-object p2, p0, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    .line 1462
    iput-wide p3, p0, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J

    .line 1463
    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1450
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1450
    iget-wide v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J

    return-wide v0
.end method


# virtual methods
.method public compareTo(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 1501
    iget-wide v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J

    iget-wide v2, p1, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1502
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1504
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J

    iget-wide v2, p1, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    neg-int v0, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1450
    check-cast p1, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->compareTo(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;)I

    move-result v0

    return v0
.end method

.method delta(Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;J)Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;
    .locals 7
    .parameter "prev"
    .parameter "total"

    .prologue
    .line 1473
    new-instance v0, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;

    iget-object v1, p0, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->this$0:Lcom/android/server/enterprise/ApplicationPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J

    iget-wide v5, p1, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    div-long/2addr v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;-><init>(Lcom/android/server/enterprise/ApplicationPolicy;Ljava/lang/String;J)V

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mCmd:Ljava/lang/String;

    return-object v0
.end method

.method getUsage()J
    .locals 2

    .prologue
    .line 1491
    iget-wide v0, p0, Lcom/android/server/enterprise/ApplicationPolicy$AppInfoTask;->mUsage:J

    return-wide v0
.end method
