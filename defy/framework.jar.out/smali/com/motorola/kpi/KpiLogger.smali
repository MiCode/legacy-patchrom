.class public final Lcom/motorola/kpi/KpiLogger;
.super Ljava/lang/Object;
.source "KpiLogger.java"


# static fields
.field private static final DEF_LEVEL:I = 0x3

.field public static final LEVEL_1:I = 0x1

.field public static final LEVEL_2:I = 0x2

.field public static final LEVEL_3:I = 0x3

.field private static final LOG_TAG_L1:Ljava/lang/String; = "MOT_DEVICE_KPI_L1"

.field private static final LOG_TAG_L2:Ljava/lang/String; = "MOT_DEVICE_KPI_L2"

.field private static final LOG_TAG_L3:Ljava/lang/String; = "MOT_DEVICE_KPI_L3"

.field private static final VERSION:Ljava/lang/String; = "1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Engg(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "level"
    .parameter "name"
    .parameter "tag"

    .prologue
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/motorola/kpi/KpiLogger;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static varargs Engg(ILjava/lang/String;Ljava/lang/String;[Lcom/motorola/kpi/KpiExtraLogs;)V
    .locals 2
    .parameter "level"
    .parameter "name"
    .parameter "tag"
    .parameter "extras"

    .prologue
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/motorola/kpi/KpiLogger;->writeToLogWithExtras(ILjava/lang/String;Ljava/lang/String;[Lcom/motorola/kpi/KpiExtraLogs;)V

    goto :goto_0
.end method

.method public static Prod(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "level"
    .parameter "name"
    .parameter "tag"

    .prologue
    invoke-static {p0, p1, p2}, Lcom/motorola/kpi/KpiLogger;->writeToLog(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs Prod(ILjava/lang/String;Ljava/lang/String;[Lcom/motorola/kpi/KpiExtraLogs;)V
    .locals 0
    .parameter "level"
    .parameter "name"
    .parameter "tag"
    .parameter "extras"

    .prologue
    invoke-static {p0, p1, p2, p3}, Lcom/motorola/kpi/KpiLogger;->writeToLogWithExtras(ILjava/lang/String;Ljava/lang/String;[Lcom/motorola/kpi/KpiExtraLogs;)V

    return-void
.end method

.method private static getKpiLogTag(I)Ljava/lang/String;
    .locals 2
    .parameter "level"

    .prologue
    const/4 v0, 0x0

    .local v0, tag:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const-string v0, "MOT_DEVICE_KPI_L1"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    const-string v0, "MOT_DEVICE_KPI_L2"

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const-string v0, "MOT_DEVICE_KPI_L3"

    goto :goto_0
.end method

.method private static writeToLog(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "level"
    .parameter "name"
    .parameter "tag"

    .prologue
    invoke-static {p0}, Lcom/motorola/kpi/KpiLogger;->getKpiLogTag(I)Ljava/lang/String;

    move-result-object v0

    .local v0, logTag:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    if-le p0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[ID=KPI;v=1.0;t="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";c="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static varargs writeToLogWithExtras(ILjava/lang/String;Ljava/lang/String;[Lcom/motorola/kpi/KpiExtraLogs;)V
    .locals 10
    .parameter "level"
    .parameter "name"
    .parameter "tag"
    .parameter "extras"

    .prologue
    invoke-static {p0}, Lcom/motorola/kpi/KpiLogger;->getKpiLogTag(I)Ljava/lang/String;

    move-result-object v5

    .local v5, logTag:Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz v5, :cond_0

    const/4 v7, 0x3

    if-le p0, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .local v6, sb:Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ID=KPI;v=1.0;t="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";c="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";a="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_4

    array-length v7, p3

    if-lez v7, :cond_4

    const/4 v1, 0x0

    .local v1, didOne:Z
    move-object v0, p3

    .local v0, arr$:[Lcom/motorola/kpi/KpiExtraLogs;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v2, v0, v3

    .local v2, e:Lcom/motorola/kpi/KpiExtraLogs;
    if-nez v1, :cond_2

    const-string v7, "[ID=ext;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v2}, Lcom/motorola/kpi/KpiExtraLogs;->format()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2           #e:Lcom/motorola/kpi/KpiExtraLogs;
    :cond_3
    if-eqz v1, :cond_4

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v0           #arr$:[Lcom/motorola/kpi/KpiExtraLogs;
    .end local v1           #didOne:Z
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
