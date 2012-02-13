.class public Landroid/database/sqlite/SQLiteDebug$DbStats;
.super Ljava/lang/Object;
.source "SQLiteDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DbStats"
.end annotation


# instance fields
.field public dbName:Ljava/lang/String;

.field public dbSize:J

.field public lookaside:I

.field public pageSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJI)V
    .locals 4
    .parameter "dbName"
    .parameter "pageCount"
    .parameter "pageSize"
    .parameter "lookaside"

    .prologue
    const-wide/16 v2, 0x400

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    div-long v0, p4, v2

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    mul-long v0, p2, p4

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    iput p6, p0, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    return-void
.end method
