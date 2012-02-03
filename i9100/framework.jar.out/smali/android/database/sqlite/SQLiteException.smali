.class public Landroid/database/sqlite/SQLiteException;
.super Landroid/database/SQLException;
.source "SQLiteException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/database/SQLException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "error"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    .line 29
    return-void
.end method
