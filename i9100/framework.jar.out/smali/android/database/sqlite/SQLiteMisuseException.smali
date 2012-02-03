.class public Landroid/database/sqlite/SQLiteMisuseException;
.super Landroid/database/sqlite/SQLiteException;
.source "SQLiteMisuseException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 24
    return-void
.end method
