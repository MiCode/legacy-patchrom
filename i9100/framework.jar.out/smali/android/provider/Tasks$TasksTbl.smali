.class public Landroid/provider/Tasks$TasksTbl;
.super Ljava/lang/Object;
.source "Tasks.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/SyncConstValue;
.implements Landroid/provider/Tasks$TasksColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Tasks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TasksTbl"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "due_date"

.field public static final DELETED:Ljava/lang/String; = "deleted"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final SYNC_DIRTY:Ljava/lang/String; = "_sync_dirty"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final _CLIENT_ID:Ljava/lang/String; = "clientId"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const-string v0, "content://tasks/tasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Landroid/content/ContentResolver;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "cr"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 156
    sget-object v0, Landroid/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 144
    sget-object v1, Landroid/provider/Tasks$TasksTbl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    if-nez p3, :cond_0

    const-string v0, "due_date"

    move-object v5, v0

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p3

    goto :goto_0
.end method
