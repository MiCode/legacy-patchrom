.class public final Lcom/android/server/enterprise/NetworkPolicy$Carriers;
.super Ljava/lang/Object;
.source "NetworkPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/NetworkPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Carriers"
.end annotation


# static fields
.field public static final APN:Ljava/lang/String; = "apn"

.field public static final AUTH_TYPE:Ljava/lang/String; = "authtype"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CURRENT:Ljava/lang/String; = "current"

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MCC:Ljava/lang/String; = "mcc"

.field public static final MMSC:Ljava/lang/String; = "mmsc"

.field public static final MMSPORT:Ljava/lang/String; = "mmsport"

.field public static final MMSPROXY:Ljava/lang/String; = "mmsproxy"

.field public static final MNC:Ljava/lang/String; = "mnc"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMERIC:Ljava/lang/String; = "numeric"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final PREFERAPN_APN_ID:Ljava/lang/String; = "apn_id"

.field public static final PREFERAPN_URI:Landroid/net/Uri; = null

.field public static final PROXY:Ljava/lang/String; = "proxy"

.field public static final SERVER:Ljava/lang/String; = "server"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final USER:Ljava/lang/String; = "user"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 276
    const-string v0, "content://telephony/carriers"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/NetworkPolicy$Carriers;->CONTENT_URI:Landroid/net/Uri;

    .line 278
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/NetworkPolicy$Carriers;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
