.class public final Landroid/provider/MediaStore$AppPackage;
.super Ljava/lang/Object;
.source "MediaStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppPackage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/MediaStore$AppPackage$Media;,
        Landroid/provider/MediaStore$AppPackage$AppPackageColumns;
    }
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "_display_name"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2201
    return-void
.end method

.method public static final query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 2193
    const-string v5, "_display_name"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
