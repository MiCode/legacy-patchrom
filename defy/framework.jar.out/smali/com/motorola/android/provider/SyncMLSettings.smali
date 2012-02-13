.class public Lcom/motorola/android/provider/SyncMLSettings;
.super Ljava/lang/Object;
.source "SyncMLSettings.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/provider/SyncMLSettings$DataSource;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.motorola.android.syncml.provider.syncsettingsprovider"

.field public static final AUTH_LEVEL_APPSRV:Ljava/lang/String; = "APPSRV"

.field public static final AUTH_LEVEL_CLIENT:Ljava/lang/String; = "CLIENT"

.field public static final AUTH_LEVEL_OBEX:Ljava/lang/String; = "OBEX"

.field public static final AUTH_TYPE_BASIC:Ljava/lang/String; = "BASIC"

.field public static final AUTH_TYPE_DIGEST:Ljava/lang/String; = "DIGEST"

.field public static final AUTH_TYPE_DIGIPASS:Ljava/lang/String; = "DIGIPASS"

.field public static final AUTH_TYPE_HTTP_BASIC:Ljava/lang/String; = "HTTP-BASIC"

.field public static final AUTH_TYPE_HTTP_DIGEST:Ljava/lang/String; = "HTTP-DIGEST"

.field public static final AUTH_TYPE_SAFEWORD:Ljava/lang/String; = "SAFEWORD"

.field public static final AUTH_TYPE_SECUREID:Ljava/lang/String; = "SECUREID"

.field public static final AUTH_TYPE_X509:Ljava/lang/String; = "X509"

.field public static final COL_ADDR_TYPE:Ljava/lang/String; = "addr_type"

.field public static final COL_AUTH_DATA:Ljava/lang/String; = "auth_data"

.field public static final COL_AUTH_LEVEL:Ljava/lang/String; = "auth_level"

.field public static final COL_AUTH_PASS:Ljava/lang/String; = "auth_pass"

.field public static final COL_AUTH_TYPE:Ljava/lang/String; = "auth_type"

.field public static final COL_AUTH_USER_NAME:Ljava/lang/String; = "auth_user"

.field public static final COL_NAME:Ljava/lang/String; = "name"

.field public static final COL_NAP_ID:Ljava/lang/String; = "nap_id"

.field public static final COL_PROVIDER_ID:Ljava/lang/String; = "provider_id"

.field public static final COL_SYNC_ADDR:Ljava/lang/String; = "sync_url"

.field public static final COL_SYNC_PORT:Ljava/lang/String; = "sync_port"

.field public static final COL_SYNC_PROXY:Ljava/lang/String; = "sync_proxy"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final INTENT_NEW_SETTINGS_RECEIVED:Landroid/content/Intent; = null

.field public static final INTENT_NEW_SETTINGS_REJECTED:Landroid/content/Intent; = null

.field public static final READ_PERMISSION:Ljava/lang/String; = "com.motorola.android.syncml.provider.READ_SETTINGS"

.field public static final WRITE_PERMISSION:Ljava/lang/String; = "com.motorola.android.syncml.provider.WRTIE_SETTINGS"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.android.provider.NEW_SYNCML_SETTINGS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/android/provider/SyncMLSettings;->INTENT_NEW_SETTINGS_RECEIVED:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.motorola.android.provider.NEW_SYNCML_SETTINGS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/motorola/android/provider/SyncMLSettings;->INTENT_NEW_SETTINGS_REJECTED:Landroid/content/Intent;

    const-string v0, "content://com.motorola.android.syncml.provider.syncsettingsprovider/syncmlsettings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/motorola/android/provider/SyncMLSettings;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
