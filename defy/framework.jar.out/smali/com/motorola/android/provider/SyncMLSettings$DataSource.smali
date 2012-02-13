.class public Lcom/motorola/android/provider/SyncMLSettings$DataSource;
.super Ljava/lang/Object;
.source "SyncMLSettings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/SyncMLSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataSource"
.end annotation


# static fields
.field public static final COL_AUTH_PASS:Ljava/lang/String; = "auth_pass"

.field public static final COL_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field public static final COL_AUTH_USER_NAME:Ljava/lang/String; = "auth_user"

.field public static final COL_CONTENT_TYPE_SUPPORTED:Ljava/lang/String; = "content_types"

.field public static final COL_NAME:Ljava/lang/String; = "name"

.field public static final COL_SYNC_SETTINGS_ID:Ljava/lang/String; = "sync_settings_id"

.field public static final COL_URI:Ljava/lang/String; = "uri"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/motorola/android/provider/SyncMLSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/datasource"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/SyncMLSettings$DataSource;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
