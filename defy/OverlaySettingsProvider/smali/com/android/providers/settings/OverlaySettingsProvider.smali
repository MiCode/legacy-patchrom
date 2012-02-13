.class public Lcom/android/providers/settings/OverlaySettingsProvider;
.super Lcom/android/providers/settings/SettingsProvider;
.source "OverlaySettingsProvider.java"


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "OverlaySettingsProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/providers/settings/SettingsProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/android/providers/settings/OverlayDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/settings/OverlaySettingsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/providers/settings/OverlayDatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 38
    .local v0, openHelper:Lcom/android/providers/settings/OverlayDatabaseHelper;
    invoke-virtual {v0}, Lcom/android/providers/settings/OverlayDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    invoke-virtual {v0}, Lcom/android/providers/settings/OverlayDatabaseHelper;->close()V

    .line 41
    invoke-super {p0}, Lcom/android/providers/settings/SettingsProvider;->onCreate()Z

    move-result v1

    .line 43
    .local v1, status:Z
    return v1
.end method
